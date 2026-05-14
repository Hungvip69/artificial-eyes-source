.class public final Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

.field public static final DEPENDENCY_FIELD_NUMBER:I = 0x3

.field public static final ENUM_TYPE_FIELD_NUMBER:I = 0x5

.field public static final EXTENSION_FIELD_NUMBER:I = 0x7

.field public static final MESSAGE_TYPE_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final PACKAGE_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PUBLIC_DEPENDENCY_FIELD_NUMBER:I = 0xa

.field public static final SERVICE_FIELD_NUMBER:I = 0x6

.field public static final SOURCE_CODE_INFO_FIELD_NUMBER:I = 0x9

.field public static final SYNTAX_FIELD_NUMBER:I = 0xc

.field public static final WEAK_DEPENDENCY_FIELD_NUMBER:I = 0xb

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private dependency_:Lcom/google/protobuf/LazyStringList;

.field private enumType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private extension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private messageType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name_:Ljava/lang/Object;

.field private options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

.field private volatile package_:Ljava/lang/Object;

.field private publicDependency_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private service_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

.field private volatile syntax_:Ljava/lang/Object;

.field private weakDependency_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4620
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 4628
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1132
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 1854
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1134
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1135
    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 1136
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1142
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1143
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 18
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1154
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;-><init>()V

    .line 1155
    const/4 v0, 0x0

    .line 1157
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    .line 1159
    .local v4, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v5, 0x0

    move/from16 v17, v5

    move v5, v0

    move/from16 v0, v17

    .line 1160
    .local v0, "done":Z
    .local v5, "mutable_bitField0_":I
    :goto_0
    const/16 v6, 0x100

    const/16 v7, 0x80

    const/4 v10, 0x4

    const/16 v11, 0x10

    const/16 v12, 0x8

    if-nez v0, :cond_17

    .line 1161
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v13

    .line 1162
    .local v13, "tag":I
    sparse-switch v13, :sswitch_data_0

    .line 1167
    invoke-virtual {v1, v2, v4, v3, v13}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    goto/16 :goto_3

    .line 1299
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v14

    .line 1300
    .local v14, "bs":Lcom/google/protobuf/ByteString;
    iget v15, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/2addr v15, v11

    iput v15, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1301
    iput-object v14, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1302
    goto/16 :goto_4

    .line 1286
    .end local v14    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v14

    .line 1287
    .local v14, "length":I
    invoke-virtual {v2, v14}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v15

    .line 1288
    .local v15, "limit":I
    and-int/lit8 v9, v5, 0x10

    if-eq v9, v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_0

    .line 1289
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1290
    or-int/lit8 v5, v5, 0x10

    .line 1292
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_1

    .line 1293
    iget-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1295
    :cond_1
    invoke-virtual {v2, v15}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 1296
    goto/16 :goto_4

    .line 1278
    .end local v14    # "length":I
    .end local v15    # "limit":I
    :sswitch_2
    and-int/lit8 v8, v5, 0x10

    if-eq v8, v11, :cond_2

    .line 1279
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1280
    or-int/lit8 v5, v5, 0x10

    .line 1282
    :cond_2
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1283
    goto/16 :goto_4

    .line 1265
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v8

    .line 1266
    .local v8, "length":I
    invoke-virtual {v2, v8}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v9

    .line 1267
    .local v9, "limit":I
    and-int/lit8 v14, v5, 0x8

    if-eq v14, v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_3

    .line 1268
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1269
    or-int/lit8 v5, v5, 0x8

    .line 1271
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_4

    .line 1272
    iget-object v14, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1274
    :cond_4
    invoke-virtual {v2, v9}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 1275
    goto/16 :goto_4

    .line 1257
    .end local v8    # "length":I
    .end local v9    # "limit":I
    :sswitch_4
    and-int/lit8 v8, v5, 0x8

    if-eq v8, v12, :cond_5

    .line 1258
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1259
    or-int/lit8 v5, v5, 0x8

    .line 1261
    :cond_5
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    goto/16 :goto_4

    .line 1244
    :sswitch_5
    const/4 v8, 0x0

    .line 1245
    .local v8, "subBuilder":Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    iget v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v9, v12

    if-ne v9, v12, :cond_6

    .line 1246
    iget-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v9}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->toBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v9

    move-object v8, v9

    .line 1248
    :cond_6
    sget-object v9, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    iput-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 1249
    if-eqz v8, :cond_7

    .line 1250
    iget-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v8, v9}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 1251
    invoke-virtual {v8}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v9

    iput-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 1253
    :cond_7
    iget v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/2addr v9, v12

    iput v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1254
    goto/16 :goto_4

    .line 1231
    .end local v8    # "subBuilder":Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    :sswitch_6
    const/4 v8, 0x0

    .line 1232
    .local v8, "subBuilder":Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    iget v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_8

    .line 1233
    iget-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v9}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v9

    move-object v8, v9

    .line 1235
    :cond_8
    sget-object v9, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    iput-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 1236
    if-eqz v8, :cond_9

    .line 1237
    iget-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v8, v9}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 1238
    invoke-virtual {v8}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->buildPartial()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v9

    iput-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 1240
    :cond_9
    iget v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/2addr v9, v10

    iput v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1241
    goto/16 :goto_4

    .line 1222
    .end local v8    # "subBuilder":Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    :sswitch_7
    and-int/lit16 v8, v5, 0x100

    if-eq v8, v6, :cond_a

    .line 1223
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1224
    or-int/lit16 v5, v5, 0x100

    .line 1226
    :cond_a
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1227
    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    .line 1226
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    goto/16 :goto_4

    .line 1213
    :sswitch_8
    and-int/lit16 v8, v5, 0x80

    if-eq v8, v7, :cond_b

    .line 1214
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1215
    or-int/lit16 v5, v5, 0x80

    .line 1217
    :cond_b
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1218
    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    .line 1217
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    goto :goto_4

    .line 1204
    :sswitch_9
    and-int/lit8 v8, v5, 0x40

    const/16 v9, 0x40

    if-eq v8, v9, :cond_c

    .line 1205
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1206
    or-int/lit8 v5, v5, 0x40

    .line 1208
    :cond_c
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1209
    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    .line 1208
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    goto :goto_4

    .line 1195
    :sswitch_a
    and-int/lit8 v8, v5, 0x20

    const/16 v9, 0x20

    if-eq v8, v9, :cond_d

    .line 1196
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1197
    or-int/lit8 v5, v5, 0x20

    .line 1199
    :cond_d
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1200
    invoke-virtual {v2, v9, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    .line 1199
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    goto :goto_4

    .line 1186
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    .line 1187
    .local v8, "bs":Lcom/google/protobuf/ByteString;
    and-int/lit8 v9, v5, 0x4

    if-eq v9, v10, :cond_e

    .line 1188
    new-instance v9, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v9}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 1189
    or-int/lit8 v5, v5, 0x4

    .line 1191
    :cond_e
    iget-object v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v9, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1192
    goto :goto_4

    .line 1180
    .end local v8    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    .line 1181
    .restart local v8    # "bs":Lcom/google/protobuf/ByteString;
    iget v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1182
    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1183
    goto :goto_4

    .line 1174
    .end local v8    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_d
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    .line 1175
    .restart local v8    # "bs":Lcom/google/protobuf/ByteString;
    iget v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    .line 1176
    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    goto :goto_4

    .line 1164
    .end local v8    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_e
    const/4 v0, 0x1

    .line 1165
    goto :goto_4

    .line 1167
    :goto_3
    if-nez v6, :cond_f

    .line 1169
    const/4 v0, 0x1

    .line 1305
    .end local v13    # "tag":I
    :cond_f
    :goto_4
    goto/16 :goto_0

    .line 1312
    .end local v0    # "done":Z
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v8, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1310
    invoke-virtual {v8, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    .end local v4    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v8

    .line 1306
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v0

    .line 1307
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    .end local v4    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local v5    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    .end local v0    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v4    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local v5    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_5
    and-int/lit8 v8, v5, 0x4

    if-ne v8, v10, :cond_10

    .line 1313
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v8}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v8

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 1315
    :cond_10
    and-int/lit8 v8, v5, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_11

    .line 1316
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1318
    :cond_11
    and-int/lit8 v8, v5, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_12

    .line 1319
    iget-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1321
    :cond_12
    and-int/lit16 v8, v5, 0x80

    if-ne v8, v7, :cond_13

    .line 1322
    iget-object v7, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1324
    :cond_13
    and-int/lit16 v7, v5, 0x100

    if-ne v7, v6, :cond_14

    .line 1325
    iget-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1327
    :cond_14
    and-int/lit8 v6, v5, 0x8

    if-ne v6, v12, :cond_15

    .line 1328
    iget-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1330
    :cond_15
    and-int/lit8 v6, v5, 0x10

    if-ne v6, v11, :cond_16

    .line 1331
    iget-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1333
    :cond_16
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->makeExtensionsImmutable()V

    throw v0

    .line 1312
    :cond_17
    and-int/lit8 v0, v5, 0x4

    if-ne v0, v10, :cond_18

    .line 1313
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    .line 1315
    :cond_18
    and-int/lit8 v0, v5, 0x20

    const/16 v8, 0x20

    if-ne v0, v8, :cond_19

    .line 1316
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1318
    :cond_19
    and-int/lit8 v0, v5, 0x40

    const/16 v8, 0x40

    if-ne v0, v8, :cond_1a

    .line 1319
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1321
    :cond_1a
    and-int/lit16 v0, v5, 0x80

    if-ne v0, v7, :cond_1b

    .line 1322
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1324
    :cond_1b
    and-int/lit16 v0, v5, 0x100

    if-ne v0, v6, :cond_1c

    .line 1325
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1327
    :cond_1c
    and-int/lit8 v0, v5, 0x8

    if-ne v0, v12, :cond_1d

    .line 1328
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1330
    :cond_1d
    and-int/lit8 v0, v5, 0x10

    if-ne v0, v11, :cond_1e

    .line 1331
    iget-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1333
    :cond_1e
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->makeExtensionsImmutable()V

    .line 1335
    nop

    .line 1336
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x32 -> :sswitch_8
        0x3a -> :sswitch_7
        0x42 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x52 -> :sswitch_3
        0x58 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/DescriptorProtos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1124
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1130
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 1854
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1131
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 1124
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Lcom/google/protobuf/LazyStringList;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/util/List;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/util/List;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/util/List;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/util/List;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/util/List;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/util/List;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 1124
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "x1"    # I

    .line 1124
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 4624
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1339
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2180
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 2183
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2154
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2155
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2161
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2162
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2122
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2128
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2167
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2168
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2174
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2175
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2142
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2143
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2149
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 2150
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2132
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2138
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 4638
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2007
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 2008
    return v0

    .line 2010
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    if-nez v1, :cond_1

    .line 2011
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2013
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 2015
    .local v1, "other":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    const/4 v2, 0x1

    .line 2016
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 2017
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2018
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2019
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 2021
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 2022
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2023
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 2024
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 2026
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v4

    .line 2027
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 2028
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v4

    .line 2029
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 2030
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v4

    .line 2031
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 2032
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v4

    .line 2033
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    move v2, v4

    .line 2034
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v4

    .line 2035
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    :goto_8
    move v2, v4

    .line 2036
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v4

    .line 2037
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    move v2, v4

    .line 2038
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v4

    .line 2039
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    :goto_a
    move v2, v4

    .line 2040
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v5

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_b

    :cond_f
    const/4 v4, 0x0

    :goto_b
    move v2, v4

    .line 2041
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2042
    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v4

    .line 2043
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    move v2, v4

    .line 2045
    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v5

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    :goto_d
    move v2, v4

    .line 2046
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2047
    if-eqz v2, :cond_13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v4

    .line 2048
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_e

    :cond_13
    const/4 v4, 0x0

    :goto_e
    move v2, v4

    .line 2050
    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v5

    if-ne v4, v5, :cond_15

    const/4 v4, 0x1

    goto :goto_f

    :cond_15
    const/4 v4, 0x0

    :goto_f
    move v2, v4

    .line 2051
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2052
    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v4

    .line 2053
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    :goto_10
    move v2, v4

    .line 2055
    :cond_17
    if-eqz v2, :cond_18

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    .line 2056
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_11
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 4647
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDependency(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1489
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDependencyBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 1500
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyCount()I
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDependencyList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getDependencyList()Ljava/util/List;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .param p1, "index"    # I

    .line 1654
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method public getEnumTypeCount()I
    .locals 1

    .line 1648
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnumTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1635
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getEnumTypeOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1661
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;

    return-object v0
.end method

.method public getEnumTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1642
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    return-object v0
.end method

.method public getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1
    .param p1, "index"    # I

    .line 1724
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    return-object v0
.end method

.method public getExtensionCount()I
    .locals 1

    .line 1718
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1705
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getExtensionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1731
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;

    return-object v0
.end method

.method public getExtensionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1712
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1
    .param p1, "index"    # I

    .line 1615
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public getMessageTypeCount()I
    .locals 1

    .line 1605
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public getMessageTypeOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1626
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;

    return-object v0
.end method

.method public getMessageTypeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$DescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1595
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .line 1370
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1371
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1372
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1374
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1376
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1378
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1380
    :cond_1
    return-object v2
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1392
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1393
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1394
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1395
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1397
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    .line 1398
    return-object v1

    .line 1400
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 1746
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    :goto_0
    return-object v0
.end method

.method public getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;
    .locals 1

    .line 1752
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    :goto_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 4

    .line 1424
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1425
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1426
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1428
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1430
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1431
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1432
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1434
    :cond_1
    return-object v2
.end method

.method public getPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1447
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1448
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1449
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1451
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    .line 1452
    return-object v1

    .line 1454
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
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 4643
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPublicDependency(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1534
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPublicDependencyCount()I
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPublicDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1514
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1936
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSize:I

    .line 1937
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1939
    :cond_0
    const/4 v0, 0x0

    .line 1940
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1941
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1943
    :cond_1
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 1944
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1947
    :cond_2
    const/4 v1, 0x0

    .line 1948
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1949
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1948
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1951
    .end local v3    # "i":I
    :cond_3
    add-int/2addr v0, v1

    .line 1952
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1954
    .end local v1    # "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v1, v3, :cond_4

    .line 1955
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    .line 1956
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1954
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1958
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1959
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    .line 1960
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v5, 0x5

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1958
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1962
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1963
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    .line 1964
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v5, 0x6

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1962
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1966
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1967
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    .line 1968
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1966
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1970
    .end local v1    # "i":I
    :cond_7
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v1, v4

    const/16 v3, 0x8

    if-ne v1, v4, :cond_8

    .line 1971
    nop

    .line 1972
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1974
    :cond_8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    .line 1975
    nop

    .line 1976
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    const/16 v3, 0x9

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1979
    :cond_9
    const/4 v1, 0x0

    .line 1980
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1981
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    .line 1982
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1980
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1984
    .end local v3    # "i":I
    :cond_a
    add-int/2addr v0, v1

    .line 1985
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1988
    .end local v1    # "dataSize":I
    const/4 v1, 0x0

    .line 1989
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 1990
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    .line 1991
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1989
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1993
    .end local v3    # "i":I
    :cond_b
    add-int/2addr v0, v1

    .line 1994
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1996
    .end local v1    # "dataSize":I
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 1997
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1999
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2000
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedSize:I

    .line 2001
    return v0
.end method

.method public getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1
    .param p1, "index"    # I

    .line 1689
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    return-object v0
.end method

.method public getServiceCount()I
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getServiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 1670
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public getServiceOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 1696
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;

    return-object v0
.end method

.method public getServiceOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    return-object v0
.end method

.method public getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    :goto_0
    return-object v0
.end method

.method public getSourceCodeInfoOrBuilder()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->sourceCodeInfo_:Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    :goto_0
    return-object v0
.end method

.method public getSyntax()Ljava/lang/String;
    .locals 4

    .line 1819
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1820
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1821
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1823
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1825
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1826
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1827
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1829
    :cond_1
    return-object v2
.end method

.method public getSyntaxBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1842
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1843
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1844
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1845
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1847
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    .line 1848
    return-object v1

    .line 1850
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWeakDependency(I)I
    .locals 1
    .param p1, "index"    # I

    .line 1571
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWeakDependencyCount()I
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWeakDependencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .line 1360
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 2

    .line 1740
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method public hasPackage()Z
    .locals 2

    .line 1414
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method public hasSourceCodeInfo()Z
    .locals 2

    .line 1768
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method public hasSyntax()Z
    .locals 2

    .line 1808
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 2061
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2062
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    return v0

    .line 2064
    :cond_0
    const/16 v0, 0x29

    .line 2065
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2066
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2067
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2068
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2070
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2071
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2072
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2074
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 2075
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 2076
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2078
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2079
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0xa

    .line 2080
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2082
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2083
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0xb

    .line 2084
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getWeakDependencyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2086
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 2087
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 2088
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2090
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2091
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 2092
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2094
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 2095
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 2096
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2098
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 2099
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 2100
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2102
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2103
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 2104
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2106
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSourceCodeInfo()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2107
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x9

    .line 2108
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2110
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasSyntax()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2111
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0xc

    .line 2112
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2114
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_c
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2115
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedHashCode:I

    .line 2116
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1344
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$800()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 1345
    const-class v2, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .line 1856
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1857
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1858
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1860
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1861
    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$DescriptorProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1862
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1863
    return v2

    .line 1860
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1866
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1867
    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1868
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1869
    return v2

    .line 1866
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1872
    .end local v3    # "i":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1873
    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1874
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1875
    return v2

    .line 1872
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1878
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 1879
    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1880
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1881
    return v2

    .line 1878
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1884
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->hasOptions()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1885
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1886
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1887
    return v2

    .line 1890
    :cond_a
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->memoizedIsInitialized:B

    .line 1891
    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    .line 2178
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2193
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 2194
    .local v0, "builder":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1124
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    .line 2186
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 2187
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1124
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

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

    .line 1896
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1897
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1899
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1900
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->package_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1902
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1903
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->dependency_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1905
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_3

    .line 1906
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->messageType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1905
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1908
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1909
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->enumType_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1908
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1911
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1912
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->service_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1911
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1914
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 1915
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->extension_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1914
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1917
    .end local v0    # "i":I
    :cond_6
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v0, v2

    const/16 v1, 0x8

    if-ne v0, v2, :cond_7

    .line 1918
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1920
    :cond_7
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 1921
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSourceCodeInfo()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1923
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1924
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->publicDependency_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1923
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1926
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 1927
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->weakDependency_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1926
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1929
    .end local v0    # "i":I
    :cond_a
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b

    .line 1930
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->syntax_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1932
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1933
    return-void
.end method
