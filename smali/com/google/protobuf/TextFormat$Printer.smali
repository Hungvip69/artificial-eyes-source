.class final Lcom/google/protobuf/TextFormat$Printer;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Printer"
.end annotation


# instance fields
.field escapeNonAscii:Z

.field singleLineMode:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/TextFormat$Printer;->escapeNonAscii:Z

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/TextFormat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/TextFormat$1;

    .line 288
    invoke-direct {p0}, Lcom/google/protobuf/TextFormat$Printer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Printer;
    .param p1, "x1"    # Z

    .line 288
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->setSingleLineMode(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/protobuf/TextFormat$Printer;Z)Lcom/google/protobuf/TextFormat$Printer;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Printer;
    .param p1, "x1"    # Z

    .line 288
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Printer;->setEscapeNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Printer;
    .param p1, "x1"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p2, "x2"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Printer;
    .param p1, "x1"    # Lcom/google/protobuf/UnknownFieldSet;
    .param p2, "x2"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Printer;
    .param p1, "x1"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$Printer;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/protobuf/TextFormat$Printer;Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/TextFormat$Printer;
    .param p1, "x1"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    return-void
.end method

.method private print(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .param p1, "message"    # Lcom/google/protobuf/MessageOrBuilder;
    .param p2, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 314
    .local v1, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/google/protobuf/TextFormat$Printer;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 315
    .end local v1    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    goto :goto_0

    .line 316
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/MessageOrBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 317
    return-void
.end method

.method private printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 324
    .local v1, "element":Ljava/lang/Object;
    invoke-direct {p0, p1, v1, p3}, Lcom/google/protobuf/TextFormat$Printer;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 325
    .end local v1    # "element":Ljava/lang/Object;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 327
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$Printer;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 329
    :goto_1
    return-void
.end method

.method private printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 4
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "\""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 450
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/Message;

    invoke-direct {p0, v0, p3}, Lcom/google/protobuf/TextFormat$Printer;->print(Lcom/google/protobuf/MessageOrBuilder;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    goto/16 :goto_2

    .line 445
    :pswitch_1
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 446
    goto/16 :goto_2

    .line 435
    :pswitch_2
    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 436
    instance-of v0, p2, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 437
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 439
    :cond_0
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeBytes([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 441
    :goto_0
    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 442
    goto/16 :goto_2

    .line 426
    :pswitch_3
    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 427
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$Printer;->escapeNonAscii:Z

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 428
    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 429
    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    const-string v2, "\n"

    const-string v3, "\\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_1
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 432
    goto :goto_2

    .line 422
    :pswitch_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/TextFormat;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 423
    goto :goto_2

    .line 417
    :pswitch_5
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormat;->unsignedToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 418
    goto :goto_2

    .line 412
    :pswitch_6
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 413
    goto :goto_2

    .line 408
    :pswitch_7
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 409
    goto :goto_2

    .line 404
    :pswitch_8
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 405
    goto :goto_2

    .line 400
    :pswitch_9
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 401
    goto :goto_2

    .line 394
    :pswitch_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 395
    nop

    .line 453
    :goto_2
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

.method private printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 347
    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 349
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    .line 351
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 357
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    .line 358
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v0, :cond_3

    .line 359
    const-string v0, " { "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 361
    :cond_3
    const-string v0, " {\n"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$TextGenerator;->indent()V

    goto :goto_2

    .line 365
    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 368
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$Printer;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 370
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_6

    .line 371
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v0, :cond_5

    .line 372
    const-string v0, "} "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 374
    :cond_5
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$TextGenerator;->outdent()V

    .line 375
    const-string v0, "}\n"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 378
    :cond_6
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v0, :cond_7

    .line 379
    const-string v0, " "

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 381
    :cond_7
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 384
    :goto_3
    return-void
.end method

.method private printUnknownField(IILjava/util/List;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "wireType"    # I
    .param p4, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/TextFormat$TextGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 495
    .local v1, "value":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 496
    const-string v2, ": "

    invoke-virtual {p4, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {p2, v1, p4}, Lcom/google/protobuf/TextFormat;->access$800(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 498
    iget-boolean v2, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v2, :cond_0

    const-string v2, " "

    goto :goto_1

    :cond_0
    const-string v2, "\n"

    :goto_1
    invoke-virtual {p4, v2}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 499
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 500
    :cond_1
    return-void
.end method

.method private printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V
    .locals 7
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;
    .param p2, "generator"    # Lcom/google/protobuf/TextFormat$TextGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 460
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/protobuf/UnknownFieldSet$Field;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 461
    .local v2, "number":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UnknownFieldSet$Field;

    .line 462
    .local v3, "field":Lcom/google/protobuf/UnknownFieldSet$Field;
    nop

    .line 463
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v4

    .line 462
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v4, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 464
    nop

    .line 465
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v4

    .line 464
    const/4 v5, 0x5

    invoke-direct {p0, v2, v5, v4, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 466
    nop

    .line 467
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v4

    .line 466
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5, v4, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 468
    nop

    .line 469
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v4

    .line 468
    const/4 v5, 0x2

    invoke-direct {p0, v2, v5, v4, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownField(IILjava/util/List;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 470
    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/UnknownFieldSet;

    .line 471
    .local v5, "value":Lcom/google/protobuf/UnknownFieldSet;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 472
    iget-boolean v6, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v6, :cond_0

    .line 473
    const-string v6, " { "

    invoke-virtual {p2, v6}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 475
    :cond_0
    const-string v6, " {\n"

    invoke-virtual {p2, v6}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 476
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->indent()V

    .line 478
    :goto_2
    invoke-direct {p0, v5, p2}, Lcom/google/protobuf/TextFormat$Printer;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/TextFormat$TextGenerator;)V

    .line 479
    iget-boolean v6, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    if-eqz v6, :cond_1

    .line 480
    const-string v6, "} "

    invoke-virtual {p2, v6}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 482
    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$TextGenerator;->outdent()V

    .line 483
    const-string v6, "}\n"

    invoke-virtual {p2, v6}, Lcom/google/protobuf/TextFormat$TextGenerator;->print(Ljava/lang/CharSequence;)V

    .line 485
    .end local v5    # "value":Lcom/google/protobuf/UnknownFieldSet;
    :goto_3
    goto :goto_1

    .line 486
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/protobuf/UnknownFieldSet$Field;>;"
    .end local v2    # "number":I
    .end local v3    # "field":Lcom/google/protobuf/UnknownFieldSet$Field;
    :cond_2
    goto/16 :goto_0

    .line 487
    :cond_3
    return-void
.end method

.method private setEscapeNonAscii(Z)Lcom/google/protobuf/TextFormat$Printer;
    .locals 0
    .param p1, "escapeNonAscii"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Printer;->escapeNonAscii:Z

    .line 306
    return-object p0
.end method

.method private setSingleLineMode(Z)Lcom/google/protobuf/TextFormat$Printer;
    .locals 0
    .param p1, "singleLineMode"    # Z

    .line 299
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Printer;->singleLineMode:Z

    .line 300
    return-object p0
.end method
