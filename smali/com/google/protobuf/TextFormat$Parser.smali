.class public Lcom/google/protobuf/TextFormat$Parser;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$Parser$Builder;,
        Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final allowUnknownFields:Z

.field private parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

.field private final singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method private constructor <init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;)V
    .locals 0
    .param p1, "allowUnknownFields"    # Z
    .param p2, "singularOverwritePolicy"    # Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .param p3, "parseInfoTreeBuilder"    # Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    .line 1282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1283
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Parser;->allowUnknownFields:Z

    .line 1284
    iput-object p2, p0, Lcom/google/protobuf/TextFormat$Parser;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1285
    iput-object p3, p0, Lcom/google/protobuf/TextFormat$Parser;->parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    .line 1286
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Lcom/google/protobuf/TextFormat$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .param p3, "x2"    # Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    .param p4, "x3"    # Lcom/google/protobuf/TextFormat$1;

    .line 1257
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$Parser;-><init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;)V

    return-void
.end method

.method private checkUnknownFields(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1389
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    return-void

    .line 1393
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input contains unknown fields and/or extensions:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1395
    .local v2, "field":Ljava/lang/String;
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    .end local v2    # "field":Ljava/lang/String;
    goto :goto_0

    .line 1398
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/TextFormat$Parser;->allowUnknownFields:Z

    if-eqz v1, :cond_2

    .line 1399
    invoke-static {}, Lcom/google/protobuf/TextFormat;->access$1000()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1405
    return-void

    .line 1401
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1402
    .local v2, "lineColumn":[Ljava/lang/String;
    new-instance v3, Lcom/google/protobuf/TextFormat$ParseException;

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 1403
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Lcom/google/protobuf/TextFormat$ParseException;-><init>(IILjava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method private consumeFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V
    .locals 15
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "target"    # Lcom/google/protobuf/MessageReflection$MergeTarget;
    .param p4, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p5, "extension"    # Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .param p6, "parseTreeBuilder"    # Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$Tokenizer;",
            "Lcom/google/protobuf/ExtensionRegistry;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            "Lcom/google/protobuf/TextFormatParseInfoTree$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1607
    .local p7, "unknownFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v11, 0x0

    .line 1609
    .local v11, "value":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v12, "\"."

    if-ne v0, v1, :cond_4

    .line 1611
    const-string v0, "<"

    invoke-virtual {v7, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    const-string v0, ">"

    move-object v13, v0

    .local v0, "endToken":Ljava/lang/String;
    goto :goto_0

    .line 1614
    .end local v0    # "endToken":Ljava/lang/String;
    :cond_0
    const-string v0, "{"

    invoke-virtual {v7, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1615
    const-string v0, "}"

    move-object v13, v0

    .line 1619
    .local v13, "endToken":Ljava/lang/String;
    :goto_0
    if-nez v10, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v10, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    :goto_1
    invoke-interface {v8, v9, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->newMergeTargetForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    move-result-object v14

    .line 1622
    .local v14, "subField":Lcom/google/protobuf/MessageReflection$MergeTarget;
    :goto_2
    invoke-virtual {v7, v13}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1623
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1627
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$Parser;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    goto :goto_2

    .line 1624
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1631
    :cond_3
    invoke-interface {v14}, Lcom/google/protobuf/MessageReflection$MergeTarget;->finish()Ljava/lang/Object;

    move-result-object v11

    .line 1633
    .end local v13    # "endToken":Ljava/lang/String;
    .end local v14    # "subField":Lcom/google/protobuf/MessageReflection$MergeTarget;
    goto/16 :goto_3

    .line 1634
    :cond_4
    sget-object v0, Lcom/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1702
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :pswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    .line 1680
    .local v0, "enumType":Lcom/google/protobuf/Descriptors$EnumDescriptor;
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v1

    const-string v2, "Enum type \""

    if-eqz v1, :cond_6

    .line 1681
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v1

    .line 1682
    .local v1, "number":I
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v11

    .line 1683
    if-eqz v11, :cond_5

    .line 1688
    .end local v1    # "number":I
    goto/16 :goto_3

    .line 1684
    .restart local v1    # "number":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1685
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" has no value with number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-virtual {v7, v2}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2

    .line 1689
    .end local v1    # "number":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1690
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v11

    .line 1691
    if-eqz v11, :cond_7

    .line 1698
    .end local v1    # "id":Ljava/lang/String;
    goto/16 :goto_3

    .line 1692
    .restart local v1    # "id":Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1693
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" has no value named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1692
    invoke-virtual {v7, v2}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v2

    throw v2

    .line 1674
    .end local v0    # "enumType":Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .end local v1    # "id":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    .line 1675
    goto :goto_3

    .line 1670
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v11

    .line 1671
    goto :goto_3

    .line 1654
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1655
    goto :goto_3

    .line 1649
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1650
    goto :goto_3

    .line 1662
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 1663
    goto :goto_3

    .line 1658
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    .line 1659
    goto :goto_3

    .line 1666
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1667
    goto :goto_3

    .line 1644
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1645
    goto :goto_3

    .line 1638
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1639
    nop

    .line 1706
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1707
    invoke-interface {v8, v9, v11}, Lcom/google/protobuf/MessageReflection$MergeTarget;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto/16 :goto_6

    .line 1708
    :cond_8
    iget-object v0, v6, Lcom/google/protobuf/TextFormat$Parser;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget-object v1, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    if-ne v0, v1, :cond_a

    .line 1710
    invoke-interface/range {p3 .. p4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    .line 1711
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-repeated field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1712
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" cannot be overwritten."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1711
    invoke-virtual {v7, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1713
    :cond_a
    :goto_4
    iget-object v0, v6, Lcom/google/protobuf/TextFormat$Parser;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget-object v1, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    if-ne v0, v1, :cond_c

    .line 1715
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1716
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    .line 1717
    :cond_b
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v0

    .line 1718
    .local v0, "oneof":Lcom/google/protobuf/Descriptors$OneofDescriptor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1719
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is specified along with field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1720
    invoke-interface {v8, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", another member of oneof \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1721
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1718
    invoke-virtual {v7, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v1

    throw v1

    .line 1723
    .end local v0    # "oneof":Lcom/google/protobuf/Descriptors$OneofDescriptor;
    :cond_c
    :goto_5
    invoke-interface {v8, v9, v11}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    .line 1725
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private consumeFieldValues(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V
    .locals 1
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "target"    # Lcom/google/protobuf/MessageReflection$MergeTarget;
    .param p4, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p5, "extension"    # Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .param p6, "parseTreeBuilder"    # Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$Tokenizer;",
            "Lcom/google/protobuf/ExtensionRegistry;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;",
            "Lcom/google/protobuf/TextFormatParseInfoTree$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1578
    .local p7, "unknownFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1580
    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    .line 1582
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    goto :goto_1

    .line 1586
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    .line 1592
    :goto_1
    return-void
.end method

.method private mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V
    .locals 19
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "target"    # Lcom/google/protobuf/MessageReflection$MergeTarget;
    .param p4, "parseTreeBuilder"    # Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$Tokenizer;",
            "Lcom/google/protobuf/ExtensionRegistry;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Lcom/google/protobuf/TextFormatParseInfoTree$Builder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1453
    .local p5, "unknownFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v0, 0x0

    .line 1454
    .local v0, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->getLine()I

    move-result v11

    .line 1455
    .local v11, "startLine":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->getColumn()I

    move-result v12

    .line 1456
    .local v12, "startColumn":I
    invoke-interface/range {p3 .. p3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v13

    .line 1457
    .local v13, "type":Lcom/google/protobuf/Descriptors$Descriptor;
    const/4 v1, 0x0

    .line 1459
    .local v1, "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    const-string v2, "["

    invoke-virtual {v8, v2}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":\t"

    const-string v4, "."

    const-string v5, ":"

    if-eqz v2, :cond_3

    .line 1461
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1462
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1463
    .local v2, "name":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v8, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1464
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1465
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1468
    :cond_0
    nop

    .line 1469
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1468
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-interface {v15, v14, v4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->findExtensionByName(Lcom/google/protobuf/ExtensionRegistry;Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v1

    .line 1471
    const-string v4, "]"

    if-nez v1, :cond_1

    .line 1472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->getPreviousLine()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1473
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->getPreviousColumn()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1474
    invoke-virtual {v13}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1472
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1476
    :cond_1
    iget-object v3, v1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    if-ne v3, v13, :cond_2

    .line 1481
    iget-object v0, v1, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 1484
    :goto_1
    invoke-virtual {v8, v4}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1485
    .end local v2    # "name":Ljava/lang/StringBuilder;
    move-object v7, v0

    move-object/from16 v16, v1

    goto/16 :goto_3

    .line 1477
    .restart local v2    # "name":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extension \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" does not extend message type \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1479
    invoke-virtual {v13}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1477
    invoke-virtual {v8, v3}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v3

    throw v3

    .line 1486
    .end local v2    # "name":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 1487
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v13, v2}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1492
    if-nez v0, :cond_6

    .line 1495
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1496
    .local v6, "lowerName":Ljava/lang/String;
    invoke-virtual {v13, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    .line 1498
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v7

    move-object/from16 v16, v0

    .end local v0    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .local v16, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    sget-object v0, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v7, v0, :cond_5

    .line 1499
    const/4 v0, 0x0

    .end local v16    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v0    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    goto :goto_2

    .line 1498
    :cond_4
    move-object/from16 v16, v0

    .line 1503
    .end local v0    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v6    # "lowerName":Ljava/lang/String;
    .restart local v16    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    move-object/from16 v0, v16

    .end local v16    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v0    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v6, v7, :cond_7

    .line 1504
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1505
    const/4 v0, 0x0

    .line 1508
    :cond_7
    if-nez v0, :cond_8

    .line 1509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->getPreviousLine()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1510
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->getPreviousColumn()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1511
    invoke-virtual {v13}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1509
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    .end local v2    # "name":Ljava/lang/String;
    :cond_8
    move-object v7, v0

    move-object/from16 v16, v1

    .end local v0    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v1    # "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .local v7, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .local v16, "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    :goto_3
    if-nez v7, :cond_a

    .line 1523
    invoke-virtual {v8, v5}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1524
    const-string v0, "{"

    invoke-virtual {v8, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1525
    const-string v0, "<"

    invoke-virtual {v8, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1526
    invoke-direct/range {p0 .. p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    goto :goto_4

    .line 1528
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldMessage(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    .line 1530
    :goto_4
    return-void

    .line 1534
    :cond_a
    invoke-virtual {v7}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_c

    .line 1535
    invoke-virtual {v8, v5}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 1536
    if-eqz v9, :cond_b

    .line 1537
    nop

    .line 1538
    invoke-virtual {v9, v7}, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;->getBuilderForSubMessageField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    move-result-object v17

    .line 1539
    .local v17, "childParseTreeBuilder":Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v7

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v18, v7

    .end local v7    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .local v18, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValues(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    .line 1541
    .end local v17    # "childParseTreeBuilder":Lcom/google/protobuf/TextFormatParseInfoTree$Builder;
    goto :goto_5

    .line 1542
    .end local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v7    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_b
    move-object/from16 v18, v7

    .end local v7    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValues(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    goto :goto_5

    .line 1546
    .end local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v7    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_c
    move-object/from16 v18, v7

    .end local v7    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v8, v5}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v18

    move-object/from16 v5, v16

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValues(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    .line 1551
    :goto_5
    if-eqz v9, :cond_d

    .line 1552
    nop

    .line 1553
    invoke-static {v11, v12}, Lcom/google/protobuf/TextFormatParseLocation;->create(II)Lcom/google/protobuf/TextFormatParseLocation;

    move-result-object v0

    .line 1552
    move-object/from16 v1, v18

    .end local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .local v1, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v9, v1, v0}, Lcom/google/protobuf/TextFormatParseInfoTree$Builder;->setLocation(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/TextFormatParseLocation;)Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    goto :goto_6

    .line 1551
    .end local v1    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_d
    move-object/from16 v1, v18

    .line 1558
    .end local v18    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .restart local v1    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :goto_6
    const-string v0, ";"

    invoke-virtual {v8, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1559
    const-string v0, ","

    invoke-virtual {v8, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 1561
    :cond_e
    return-void
.end method

.method private mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Ljava/util/List;)V
    .locals 6
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "target"    # Lcom/google/protobuf/MessageReflection$MergeTarget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/TextFormat$Tokenizer;",
            "Lcom/google/protobuf/ExtensionRegistry;",
            "Lcom/google/protobuf/MessageReflection$MergeTarget;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1439
    .local p4, "unknownFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/google/protobuf/TextFormat$Parser;->parseInfoTreeBuilder:Lcom/google/protobuf/TextFormatParseInfoTree$Builder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$Parser;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/TextFormatParseInfoTree$Builder;Ljava/util/List;)V

    .line 1441
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 1

    .line 1292
    new-instance v0, Lcom/google/protobuf/TextFormat$Parser$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/TextFormat$Parser$Builder;-><init>()V

    return-object v0
.end method

.method private skipField(Lcom/google/protobuf/TextFormat$Tokenizer;)V
    .locals 1
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1731
    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1734
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    .line 1735
    const-string v0, "."

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    goto :goto_0

    .line 1738
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    .line 1747
    :goto_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1748
    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1749
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1750
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    goto :goto_1

    .line 1752
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldMessage(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    .line 1756
    :goto_1
    const-string v0, ";"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1757
    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 1759
    :cond_3
    return-void
.end method

.method private skipFieldMessage(Lcom/google/protobuf/TextFormat$Tokenizer;)V
    .locals 2
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1767
    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    const-string v0, ">"

    .local v0, "delimiter":Ljava/lang/String;
    goto :goto_0

    .line 1770
    .end local v0    # "delimiter":Ljava/lang/String;
    :cond_0
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1771
    const-string v0, "}"

    .line 1773
    .restart local v0    # "delimiter":Ljava/lang/String;
    :goto_0
    const-string v1, ">"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "}"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1774
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipField(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    goto :goto_0

    .line 1776
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1777
    return-void
.end method

.method private skipFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;)V
    .locals 2
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1783
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1784
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeString()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1785
    :cond_0
    return-void

    .line 1787
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeIdentifier()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1788
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeInt64()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1789
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeUInt64()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1790
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeDouble()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1791
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeFloat()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1792
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid field value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1793
    invoke-static {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->access$1200(Lcom/google/protobuf/TextFormat$Tokenizer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1792
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1795
    :cond_3
    :goto_1
    return-void
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "input"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1373
    .local v0, "text":Ljava/lang/StringBuilder;
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 1375
    .local v1, "buffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v2

    .line 1376
    .local v2, "n":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1377
    nop

    .line 1382
    .end local v2    # "n":I
    return-object v0

    .line 1379
    .restart local v2    # "n":I
    :cond_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1380
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1381
    .end local v2    # "n":I
    goto :goto_0
.end method


# virtual methods
.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1416
    new-instance v0, Lcom/google/protobuf/TextFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$1;)V

    .line 1417
    .local v0, "tokenizer":Lcom/google/protobuf/TextFormat$Tokenizer;
    new-instance v1, Lcom/google/protobuf/MessageReflection$BuilderAdapter;

    invoke-direct {v1, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 1420
    .local v1, "target":Lcom/google/protobuf/MessageReflection$BuilderAdapter;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1422
    .local v2, "unknownFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1423
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/protobuf/TextFormat$Parser;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Ljava/util/List;)V

    goto :goto_0

    .line 1426
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/protobuf/TextFormat$Parser;->checkUnknownFields(Ljava/util/List;)V

    .line 1427
    return-void
.end method

.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .line 1342
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1343
    return-void
.end method

.method public merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/Readable;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1362
    invoke-static {p1}, Lcom/google/protobuf/TextFormat$Parser;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1363
    return-void
.end method

.method public merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/Readable;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1333
    return-void
.end method
