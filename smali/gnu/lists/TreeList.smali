.class public Lgnu/lists/TreeList;
.super Lgnu/lists/AbstractSequence;
.source "TreeList.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/Consumable;


# static fields
.field protected static final BEGIN_ATTRIBUTE_LONG:I = 0xf109

.field public static final BEGIN_ATTRIBUTE_LONG_SIZE:I = 0x5

.field protected static final BEGIN_DOCUMENT:I = 0xf110

.field protected static final BEGIN_ELEMENT_LONG:I = 0xf108

.field protected static final BEGIN_ELEMENT_SHORT:I = 0xa000

.field protected static final BEGIN_ELEMENT_SHORT_INDEX_MAX:I = 0xfff

.field public static final BEGIN_ENTITY:I = 0xf112

.field public static final BEGIN_ENTITY_SIZE:I = 0x5

.field static final BOOL_FALSE:C = '\uf100'

.field static final BOOL_TRUE:C = '\uf101'

.field static final BYTE_PREFIX:I = 0xf000

.field static final CDATA_SECTION:I = 0xf115

.field static final CHAR_FOLLOWS:I = 0xf106

.field static final COMMENT:I = 0xf117

.field protected static final DOCUMENT_URI:I = 0xf118

.field static final DOUBLE_FOLLOWS:I = 0xf105

.field static final END_ATTRIBUTE:I = 0xf10a

.field public static final END_ATTRIBUTE_SIZE:I = 0x1

.field protected static final END_DOCUMENT:I = 0xf111

.field protected static final END_ELEMENT_LONG:I = 0xf10c

.field protected static final END_ELEMENT_SHORT:I = 0xf10b

.field protected static final END_ENTITY:I = 0xf113

.field static final FLOAT_FOLLOWS:I = 0xf104

.field public static final INT_FOLLOWS:I = 0xf102

.field static final INT_SHORT_ZERO:I = 0xc000

.field static final JOINER:I = 0xf116

.field static final LONG_FOLLOWS:I = 0xf103

.field public static final MAX_CHAR_SHORT:I = 0x9fff

.field static final MAX_INT_SHORT:I = 0x1fff

.field static final MIN_INT_SHORT:I = -0x1000

.field static final OBJECT_REF_FOLLOWS:C = '\uf10d'

.field static final OBJECT_REF_SHORT:I = 0xe000

.field static final OBJECT_REF_SHORT_INDEX_MAX:I = 0xfff

.field protected static final POSITION_PAIR_FOLLOWS:C = '\uf10f'

.field static final POSITION_REF_FOLLOWS:C = '\uf10e'

.field protected static final PROCESSING_INSTRUCTION:I = 0xf114


# instance fields
.field public attrStart:I

.field currentParent:I

.field public data:[C

.field public docStart:I

.field public gapEnd:I

.field public gapStart:I

.field public objects:[Ljava/lang/Object;

.field public oindex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 324
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 40
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 41
    const/16 v0, 0xc8

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 42
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 43
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;)V
    .locals 2
    .param p1, "list"    # Lgnu/lists/TreeList;

    .line 59
    iget-object v0, p1, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lgnu/lists/TreeList;II)V
    .locals 0
    .param p1, "list"    # Lgnu/lists/TreeList;
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I

    .line 53
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 54
    invoke-virtual {p1, p2, p3, p0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 55
    return-void
.end method

.method private copyToList(II)Ljava/lang/Object;
    .locals 1
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .line 1646
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/TreeList;-><init>(Lgnu/lists/TreeList;II)V

    return-object v0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 0
    .param p1, "c"    # C

    .line 683
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->write(I)V

    .line 684
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 828
    if-nez p1, :cond_0

    .line 829
    const-string p1, "null"

    .line 830
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 835
    if-nez p1, :cond_0

    .line 836
    const-string p1, "null"

    .line 837
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 838
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(C)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/TreeList;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 4
    .param p1, "base"    # Ljava/lang/Object;

    .line 535
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz v0, :cond_0

    .line 536
    return-void

    .line 537
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 538
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 539
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 540
    .local v0, "p":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v2, 0xf112

    aput-char v2, v1, v0

    .line 541
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 542
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    sub-int v3, v2, v0

    :goto_0
    invoke-virtual {p0, v1, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 543
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 544
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 545
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v3, 0xf113

    aput-char v3, v1, v2

    .line 546
    return-void
.end method

.method public clear()V
    .locals 3

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 65
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 66
    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 67
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_0

    .line 69
    const/16 v1, 0xc8

    iput v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 70
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    new-array v1, v1, [C

    iput-object v1, p0, Lgnu/lists/TreeList;->data:[C

    .line 72
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 73
    iput v0, p0, Lgnu/lists/TreeList;->oindex:I

    .line 74
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 75
    return-void
.end method

.method public compare(II)I
    .locals 3
    .param p1, "ipos1"    # I
    .param p2, "ipos2"    # I

    .line 2271
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2272
    .local v0, "i1":I
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 2273
    .local v1, "i2":I
    if-ge v0, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 2
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 2303
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 2304
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 4
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .line 400
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 402
    invoke-virtual {p1}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10e

    aput-char v3, v1, v2

    .line 404
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 405
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 406
    return-void
.end method

.method public consumeIRange(IILgnu/lists/Consumer;)I
    .locals 5

    .line 1090
    nop

    .line 1091
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0

    :cond_0
    move v0, p2

    .line 1096
    :goto_0
    if-lt p1, v0, :cond_2

    .line 1098
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-le p2, v0, :cond_1

    .line 1100
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1101
    move v0, p2

    goto :goto_1

    .line 1286
    :cond_1
    return p1

    .line 1107
    :cond_2
    :goto_1
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    aget-char p1, v1, p1

    .line 1109
    const v1, 0x9fff

    if-gt p1, v1, :cond_5

    .line 1111
    add-int/lit8 v3, v2, -0x1

    .line 1112
    nop

    .line 1115
    :goto_2
    if-lt v2, v0, :cond_3

    .line 1116
    move p1, v2

    goto :goto_3

    .line 1117
    :cond_3
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v4, v2, 0x1

    aget-char p1, p1, v2

    .line 1118
    if-le p1, v1, :cond_4

    .line 1120
    add-int/lit8 v4, v4, -0x1

    .line 1121
    move p1, v4

    .line 1124
    :goto_3
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v2, p1, v3

    invoke-interface {p3, v1, v3, v2}, Lgnu/lists/Consumer;->write([CII)V

    .line 1125
    goto :goto_0

    .line 1118
    :cond_4
    move v2, v4

    goto :goto_2

    .line 1127
    :cond_5
    const v1, 0xe000

    if-lt p1, v1, :cond_6

    const v3, 0xefff

    if-gt p1, v3, :cond_6

    .line 1130
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr p1, v1

    aget-object p1, v3, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1131
    goto/16 :goto_8

    .line 1133
    :cond_6
    const v1, 0xa000

    if-lt p1, v1, :cond_7

    const v3, 0xafff

    if-gt p1, v3, :cond_7

    .line 1136
    sub-int/2addr p1, v1

    .line 1137
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1138
    add-int/lit8 p1, v2, 0x2

    .line 1139
    goto :goto_0

    .line 1148
    :cond_7
    const v1, 0xb000

    if-lt p1, v1, :cond_8

    const v1, 0xdfff

    if-gt p1, v1, :cond_8

    .line 1151
    const v1, 0xc000

    sub-int/2addr p1, v1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1152
    goto/16 :goto_8

    .line 1154
    :cond_8
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1283
    :pswitch_0
    new-instance p2, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown code:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1173
    :pswitch_1
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_9

    .line 1174
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 1175
    :cond_9
    add-int/lit8 p1, v2, 0x2

    .line 1176
    goto/16 :goto_0

    .line 1179
    :pswitch_2
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1180
    add-int/lit8 v2, v2, 0x2

    .line 1181
    instance-of v1, p3, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_a

    .line 1182
    move-object v1, p3

    check-cast v1, Lgnu/lists/XConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v1, v3, v2, p1}, Lgnu/lists/XConsumer;->writeComment([CII)V

    .line 1183
    :cond_a
    add-int/2addr p1, v2

    .line 1185
    goto/16 :goto_0

    .line 1213
    :pswitch_3
    const-string p1, ""

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 1214
    goto/16 :goto_8

    .line 1188
    :pswitch_4
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1189
    add-int/lit8 v2, v2, 0x2

    .line 1190
    instance-of v1, p3, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_b

    .line 1191
    move-object v1, p3

    check-cast v1, Lgnu/lists/XConsumer;

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v1, v3, v2, p1}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_4

    .line 1193
    :cond_b
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {p3, v1, v2, p1}, Lgnu/lists/Consumer;->write([CII)V

    .line 1194
    :goto_4
    add-int/2addr p1, v2

    .line 1196
    goto/16 :goto_0

    .line 1199
    :pswitch_5
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    .line 1200
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1201
    add-int/lit8 v2, v2, 0x4

    .line 1202
    instance-of v3, p3, Lgnu/lists/XConsumer;

    if-eqz v3, :cond_c

    .line 1203
    move-object v3, p3

    check-cast v3, Lgnu/lists/XConsumer;

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    invoke-interface {v3, p1, v4, v2, v1}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    .line 1205
    :cond_c
    add-int p1, v2, v1

    .line 1207
    goto/16 :goto_0

    .line 1169
    :pswitch_6
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_12

    .line 1170
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    invoke-virtual {p1}, Lgnu/lists/TreeList;->endEntity()V

    goto/16 :goto_8

    .line 1164
    :pswitch_7
    instance-of p1, p3, Lgnu/lists/TreeList;

    if-eqz p1, :cond_d

    .line 1165
    move-object p1, p3

    check-cast p1, Lgnu/lists/TreeList;

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Lgnu/lists/TreeList;->beginEntity(Ljava/lang/Object;)V

    .line 1166
    :cond_d
    add-int/lit8 p1, v2, 0x4

    .line 1167
    goto/16 :goto_0

    .line 1161
    :pswitch_8
    invoke-interface {p3}, Lgnu/lists/Consumer;->endDocument()V

    .line 1162
    goto/16 :goto_8

    .line 1157
    :pswitch_9
    invoke-interface {p3}, Lgnu/lists/Consumer;->startDocument()V

    .line 1158
    add-int/lit8 p1, v2, 0x4

    .line 1159
    goto/16 :goto_0

    .line 1221
    :pswitch_a
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object p1, p1, v1

    check-cast p1, Lgnu/lists/AbstractSequence;

    .line 1222
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1223
    instance-of v3, p3, Lgnu/lists/PositionConsumer;

    if-eqz v3, :cond_e

    .line 1224
    move-object v3, p3

    check-cast v3, Lgnu/lists/PositionConsumer;

    invoke-interface {v3, p1, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_5

    .line 1226
    :cond_e
    invoke-virtual {p1, v1}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1227
    :goto_5
    add-int/lit8 p1, v2, 0x4

    .line 1229
    goto/16 :goto_0

    .line 1231
    :pswitch_b
    instance-of p1, p3, Lgnu/lists/PositionConsumer;

    if-eqz p1, :cond_f

    .line 1233
    move-object p1, p3

    check-cast p1, Lgnu/lists/PositionConsumer;

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v1, v1, v3

    check-cast v1, Lgnu/lists/SeqPosition;

    invoke-interface {p1, v1}, Lgnu/lists/PositionConsumer;->consume(Lgnu/lists/SeqPosition;)V

    .line 1234
    add-int/lit8 p1, v2, 0x2

    .line 1235
    goto/16 :goto_0

    .line 1239
    :cond_f
    :pswitch_c
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object p1, p1, v1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 1240
    add-int/lit8 p1, v2, 0x2

    .line 1241
    goto/16 :goto_0

    .line 1254
    :pswitch_d
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    .line 1255
    invoke-interface {p3}, Lgnu/lists/Consumer;->endElement()V

    .line 1256
    add-int/lit8 p1, v2, 0x6

    .line 1257
    goto/16 :goto_0

    .line 1243
    :pswitch_e
    add-int/lit8 p1, v2, 0x1

    .line 1244
    invoke-interface {p3}, Lgnu/lists/Consumer;->endElement()V

    .line 1245
    goto/16 :goto_0

    .line 1264
    :pswitch_f
    invoke-interface {p3}, Lgnu/lists/Consumer;->endAttribute()V

    .line 1265
    goto/16 :goto_8

    .line 1259
    :pswitch_10
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1260
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 1261
    add-int/lit8 p1, v2, 0x4

    .line 1262
    goto/16 :goto_0

    .line 1247
    :pswitch_11
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1248
    if-ltz p1, :cond_10

    add-int/lit8 v3, v2, -0x1

    goto :goto_6

    :cond_10
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    :goto_6
    add-int/2addr p1, v3

    .line 1249
    add-int/lit8 v2, v2, 0x2

    .line 1250
    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1251
    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 1252
    move p1, v2

    goto/16 :goto_0

    .line 1216
    :pswitch_12
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 p1, p1, 0x1

    const v3, 0xf106

    sub-int/2addr p1, v3

    invoke-interface {p3, v1, v2, p1}, Lgnu/lists/Consumer;->write([CII)V

    .line 1217
    add-int/lit8 p1, v2, 0x1

    .line 1218
    goto/16 :goto_0

    .line 1279
    :pswitch_13
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 1280
    add-int/lit8 p1, v2, 0x4

    .line 1281
    goto/16 :goto_0

    .line 1271
    :pswitch_14
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 1272
    add-int/lit8 p1, v2, 0x2

    .line 1273
    goto/16 :goto_0

    .line 1275
    :pswitch_15
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v3

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 1276
    add-int/lit8 p1, v2, 0x4

    .line 1277
    goto/16 :goto_0

    .line 1267
    :pswitch_16
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-interface {p3, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 1268
    add-int/lit8 p1, v2, 0x2

    .line 1269
    goto/16 :goto_0

    .line 1210
    :pswitch_17
    const v3, 0xf100

    if-eq p1, v3, :cond_11

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    :goto_7
    invoke-interface {p3, v1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 1211
    nop

    .line 1096
    :cond_12
    :goto_8
    move p1, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 3
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 1072
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->hasNext(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    const/4 v0, 0x0

    return v0

    .line 1074
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1075
    .local v0, "start":I
    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v1

    .line 1076
    .local v1, "end":I
    if-ne v1, v0, :cond_1

    .line 1077
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 1078
    :cond_1
    if-ltz v1, :cond_2

    .line 1079
    invoke-virtual {p0, v0, v1, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 1080
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 2
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 1085
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 1086
    return-void
.end method

.method public createPos(IZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lgnu/lists/TreeList;->createRelativePos(IIZ)I

    move-result v0

    return v0
.end method

.method public createRelativePos(IIZ)I
    .locals 4
    .param p1, "istart"    # I
    .param p2, "offset"    # I
    .param p3, "isAfter"    # Z

    .line 1914
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 1916
    if-nez p2, :cond_1

    .line 1918
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1919
    return p1

    .line 1920
    :cond_0
    if-nez p1, :cond_1

    .line 1921
    return v0

    .line 1923
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 1925
    :cond_2
    if-ltz p2, :cond_7

    .line 1927
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 1928
    .local v1, "pos":I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    .line 1930
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 1931
    if-ltz v1, :cond_3

    goto :goto_0

    .line 1932
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1934
    :cond_4
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v1, v2, :cond_5

    .line 1935
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 1936
    :cond_5
    if-eqz p3, :cond_6

    add-int/lit8 v2, v1, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v0, v2

    goto :goto_1

    :cond_6
    shl-int/lit8 v0, v1, 0x1

    :goto_1
    return v0

    .line 1926
    .end local v1    # "pos":I
    :cond_7
    const-string v0, "backwards createRelativePos"

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public documentUriOfPos(I)Ljava/lang/Object;
    .locals 5
    .param p1, "pos"    # I

    .line 2249
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2250
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2251
    return-object v2

    .line 2252
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    const v3, 0xf110

    if-ne v1, v3, :cond_2

    .line 2254
    add-int/lit8 v1, v0, 0x5

    .line 2255
    .local v1, "next":I
    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v1, v3, :cond_1

    .line 2256
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2257
    :cond_1
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v3, v3, v1

    const v4, 0xf118

    if-ne v3, v4, :cond_2

    .line 2258
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    aget-object v2, v2, v3

    return-object v2

    .line 2260
    .end local v1    # "next":I
    :cond_2
    return-object v2
.end method

.method public dump()V
    .locals 2

    .line 2323
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2325
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;)V

    .line 2326
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2327
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gapStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gapEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/lists/TreeList;->dump(Ljava/io/PrintWriter;II)V

    .line 2334
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;II)V
    .locals 17

    .line 2338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2340
    nop

    .line 2341
    move/from16 v3, p2

    const/4 v4, 0x0

    :goto_0
    move/from16 v5, p3

    if-ge v3, v5, :cond_11

    .line 2344
    iget v6, v0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v7, 0x1

    if-lt v3, v6, :cond_0

    iget v6, v0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v3, v6, :cond_10

    .line 2347
    :cond_0
    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    aget-char v6, v6, v3

    .line 2348
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-short v10, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_f

    .line 2351
    const v8, 0x9fff

    if-gt v6, v8, :cond_3

    .line 2353
    const/16 v8, 0x20

    const-string v9, "\'"

    if-lt v6, v8, :cond_1

    const/16 v8, 0x7f

    if-ge v6, v8, :cond_1

    .line 2354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-char v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2355
    :cond_1
    const/16 v8, 0xa

    if-ne v6, v8, :cond_2

    .line 2356
    const-string v6, "=\'\\n\'"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2358
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "=\'\\u"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2360
    :cond_3
    const/16 v8, 0x40

    const v10, 0xe000

    if-lt v6, v10, :cond_4

    const v11, 0xefff

    if-gt v6, v11, :cond_4

    .line 2363
    sub-int/2addr v6, v10

    .line 2364
    iget-object v10, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v10, v10, v6

    .line 2365
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=Object#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0x3a

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    goto/16 :goto_7

    .line 2369
    :cond_4
    const v10, 0xa000

    const/16 v11, 0x3e

    const-string v12, "=<"

    const/4 v13, 0x2

    if-lt v6, v10, :cond_5

    const v14, 0xafff

    if-gt v6, v14, :cond_5

    .line 2372
    sub-int/2addr v6, v10

    .line 2373
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v8, v3, 0x1

    aget-char v4, v4, v8

    add-int/2addr v4, v3

    .line 2374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=BEGIN_ELEMENT_SHORT end:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " index#"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v6, v8, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    const/4 v4, 0x2

    goto/16 :goto_7

    .line 2377
    :cond_5
    const v14, 0xb000

    if-lt v6, v14, :cond_6

    const v14, 0xdfff

    if-gt v6, v14, :cond_6

    .line 2380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "= INT_SHORT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0xc000

    sub-int/2addr v6, v9

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2384
    :cond_6
    const-string v14, " -> #"

    const/16 v15, 0x27

    const-string v2, " parent:"

    const/16 v16, 0x4

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 2431
    :pswitch_1
    const-string v2, "=DOCUMENT_URI: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2433
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2434
    nop

    .line 2435
    const/4 v4, 0x2

    goto/16 :goto_7

    .line 2437
    :pswitch_2
    const-string v2, "=COMMENT: \'"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2439
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v1, v4, v6, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 2440
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2441
    add-int/2addr v2, v13

    .line 2442
    move v4, v2

    goto/16 :goto_7

    .line 2465
    :pswitch_3
    const-string v2, "= joiner"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2444
    :pswitch_4
    const-string v2, "=CDATA: \'"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2445
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2446
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {v1, v4, v6, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 2447
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2448
    add-int/2addr v2, v13

    .line 2449
    move v4, v2

    goto/16 :goto_7

    .line 2451
    :pswitch_5
    const-string v2, "=PROCESSING_INSTRUCTION: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2452
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2453
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2454
    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2456
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v3, 0x5

    invoke-virtual {v1, v4, v6, v2}, Ljava/io/PrintWriter;->write([CII)V

    .line 2457
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 2458
    add-int/lit8 v2, v2, 0x4

    .line 2459
    move v4, v2

    goto/16 :goto_7

    .line 2428
    :pswitch_6
    const-string v2, "=END_ENTITY"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    goto/16 :goto_7

    .line 2419
    :pswitch_7
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2420
    const-string v6, "=BEGIN_ENTITY base:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2422
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2423
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2424
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2425
    nop

    .line 2426
    const/4 v4, 0x4

    goto/16 :goto_7

    .line 2461
    :pswitch_8
    const-string v2, "=END_DOCUMENT"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2462
    goto/16 :goto_7

    .line 2409
    :pswitch_9
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2410
    if-gez v4, :cond_7

    iget-object v6, v0, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    goto :goto_1

    :cond_7
    move v6, v3

    :goto_1
    add-int/2addr v4, v6

    .line 2411
    const-string v6, "=BEGIN_DOCUMENT end:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2415
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2416
    nop

    .line 2417
    const/4 v4, 0x4

    goto/16 :goto_7

    .line 2519
    :pswitch_a
    const-string v2, "=POSITION_PAIR_FOLLOWS seq:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2522
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2523
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    .line 2524
    if-nez v2, :cond_8

    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 2526
    if-nez v2, :cond_9

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 2527
    :cond_9
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    :goto_3
    const-string v2, " ipos:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2529
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2531
    const/4 v4, 0x4

    goto/16 :goto_7

    .line 2470
    :pswitch_b
    const/4 v4, 0x2

    goto/16 :goto_7

    .line 2497
    :pswitch_c
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2498
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "=END_ELEMENT_LONG name:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v4, v8, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2500
    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2501
    if-gez v4, :cond_a

    add-int/2addr v4, v3

    .line 2502
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " begin:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2503
    add-int/lit8 v4, v3, 0x5

    invoke-virtual {v0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v4

    .line 2504
    if-gez v4, :cond_b

    add-int/2addr v4, v3

    .line 2505
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    nop

    .line 2507
    const/4 v2, 0x6

    const/4 v4, 0x6

    goto/16 :goto_7

    .line 2472
    :pswitch_d
    const-string v2, "=END_ELEMENT_SHORT begin:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2473
    iget-object v2, v0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v4, v3, 0x1

    aget-char v2, v2, v4

    sub-int v2, v3, v2

    .line 2474
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2475
    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    aget-char v2, v4, v2

    sub-int/2addr v2, v10

    .line 2476
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2478
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2479
    iget-object v4, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2480
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 2481
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 2517
    :pswitch_e
    const-string v2, "=END_ATTRIBUTE"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2509
    :pswitch_f
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=BEGIN_ATTRIBUTE name:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2513
    if-gez v2, :cond_c

    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_4

    :cond_c
    move v4, v3

    :goto_4
    add-int/2addr v2, v4

    .line 2514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " end:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2515
    nop

    .line 2516
    const/4 v4, 0x4

    goto/16 :goto_7

    .line 2483
    :pswitch_10
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2484
    if-gez v2, :cond_d

    iget-object v4, v0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_5

    :cond_d
    move v4, v3

    :goto_5
    add-int/2addr v2, v4

    .line 2485
    const-string v4, "=BEGIN_ELEMENT_LONG end:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2487
    add-int/2addr v2, v7

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2488
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2490
    if-ltz v2, :cond_e

    add-int/lit8 v4, v2, 0x1

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v4, v6, :cond_e

    .line 2491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    .line 2493
    :cond_e
    const-string v2, "=<out-of-bounds>"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    :goto_6
    nop

    .line 2495
    const/4 v4, 0x2

    goto/16 :goto_7

    .line 2467
    :pswitch_11
    const-string v2, "=CHAR_FOLLOWS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_7

    .line 2403
    :pswitch_12
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v8

    .line 2404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=DOUBLE_FOLLOWS value:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2406
    nop

    .line 2407
    const/4 v4, 0x4

    goto :goto_7

    .line 2397
    :pswitch_13
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=FLOAT_FOLLOWS value:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 2400
    nop

    .line 2401
    const/4 v4, 0x2

    goto :goto_7

    .line 2392
    :pswitch_14
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v8

    .line 2393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=LONG_FOLLOWS value:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    nop

    .line 2395
    const/4 v4, 0x4

    goto :goto_7

    .line 2387
    :pswitch_15
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 2388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=INT_FOLLOWS value:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    nop

    .line 2390
    const/4 v4, 0x2

    goto :goto_7

    .line 2464
    :pswitch_16
    const-string v2, "= true"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 2463
    :pswitch_17
    const-string v2, "= false"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2540
    :cond_f
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2541
    if-lez v4, :cond_10

    .line 2543
    add-int/2addr v3, v4

    .line 2544
    const/4 v4, 0x0

    .line 2341
    :cond_10
    add-int/2addr v3, v7

    goto/16 :goto_0

    .line 2548
    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public endAttribute()V
    .locals 4

    .line 670
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-gtz v0, :cond_0

    .line 671
    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    const v1, 0xf10a

    if-ne v0, v1, :cond_1

    .line 675
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 676
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    iget v3, p0, Lgnu/lists/TreeList;->attrStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 677
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 678
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v1, v0, v2

    .line 679
    return-void

    .line 673
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endAttribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 4

    .line 517
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    const v1, 0xf111

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgnu/lists/TreeList;->docStart:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v0, v0, v2

    const v2, 0xf110

    if-ne v0, v2, :cond_1

    .line 521
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 522
    iget v0, p0, Lgnu/lists/TreeList;->docStart:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    iget v3, p0, Lgnu/lists/TreeList;->docStart:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v0, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/TreeList;->docStart:I

    .line 524
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v1, v0, v2

    .line 525
    iget v0, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 526
    .local v0, "parent":I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 527
    return-void

    .line 519
    .end local v0    # "parent":I
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endDocument"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement()V
    .locals 8

    .line 591
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    const v1, 0xf10c

    if-ne v0, v1, :cond_3

    .line 593
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 594
    .local v0, "index":I
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 595
    .local v2, "begin":I
    iget v3, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 596
    .local v3, "parent":I
    iput v3, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 597
    iget v4, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 598
    iget v4, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v4, v2

    .line 599
    .local v4, "offset":I
    sub-int v5, v2, v3

    .line 600
    .local v5, "parentOffset":I
    const/16 v6, 0xfff

    if-ge v0, v6, :cond_0

    const/high16 v6, 0x10000

    if-ge v4, v6, :cond_0

    if-ge v5, v6, :cond_0

    .line 603
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v6, 0xa000

    or-int/2addr v6, v0

    int-to-char v6, v6

    aput-char v6, v1, v2

    .line 604
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v2, 0x1

    int-to-char v7, v4

    aput-char v7, v1, v6

    .line 605
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v2, 0x2

    int-to-char v7, v5

    aput-char v7, v1, v6

    .line 606
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    const v7, 0xf10b

    aput-char v7, v1, v6

    .line 607
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v6, v6, 0x1

    int-to-char v7, v4

    aput-char v7, v1, v6

    .line 608
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    goto :goto_0

    .line 612
    :cond_0
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    const v7, 0xf108

    aput-char v7, v6, v2

    .line 613
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6, v4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 614
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    iget v7, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v1, v6, v7

    .line 615
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 616
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x3

    neg-int v6, v4

    invoke-virtual {p0, v1, v6}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 617
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ge v3, v1, :cond_1

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-gt v2, v1, :cond_2

    .line 618
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v3, v1

    .line 619
    :cond_2
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 620
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 622
    :goto_0
    return-void

    .line 592
    .end local v0    # "index":I
    .end local v2    # "begin":I
    .end local v3    # "parent":I
    .end local v4    # "offset":I
    .end local v5    # "parentOffset":I
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endElement"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endEntity()V
    .locals 4

    .line 551
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    aget-char v0, v0, v1

    const v1, 0xf113

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    aget-char v0, v0, v2

    const v2, 0xf112

    if-ne v0, v2, :cond_2

    .line 557
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 558
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char v1, v0, v2

    .line 559
    iget v0, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 560
    .local v0, "parent":I
    const/4 v1, -0x1

    if-lt v0, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    add-int/2addr v1, v0

    :goto_0
    iput v1, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 561
    return-void

    .line 555
    .end local v0    # "parent":I
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unexpected endEntity"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_3
    :goto_1
    return-void
.end method

.method public ensureSpace(I)V
    .locals 9
    .param p1, "needed"    # I

    .line 328
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    .line 329
    .local v0, "avail":I
    if-le p1, v0, :cond_3

    .line 331
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    .line 332
    .local v1, "oldSize":I
    sub-int v2, v1, v0

    add-int/2addr v2, p1

    .line 333
    .local v2, "neededSize":I
    mul-int/lit8 v3, v1, 0x2

    .line 334
    .local v3, "newSize":I
    if-ge v3, v2, :cond_0

    .line 335
    move v3, v2

    .line 336
    :cond_0
    new-array v4, v3, [C

    .line 337
    .local v4, "tmp":[C
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lez v5, :cond_1

    .line 338
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    iget v6, p0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v7, 0x0

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_1
    iget v5, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int v5, v1, v5

    .line 340
    .local v5, "afterGap":I
    if-lez v5, :cond_2

    .line 341
    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    iget v7, p0, Lgnu/lists/TreeList;->gapEnd:I

    sub-int v8, v3, v5

    invoke-static {v6, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :cond_2
    sub-int v6, v3, v5

    iput v6, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 343
    iput-object v4, p0, Lgnu/lists/TreeList;->data:[C

    .line 345
    .end local v1    # "oldSize":I
    .end local v2    # "neededSize":I
    .end local v3    # "newSize":I
    .end local v4    # "tmp":[C
    .end local v5    # "afterGap":I
    :cond_3
    return-void
.end method

.method public find(Ljava/lang/Object;)I
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 370
    iget v0, p0, Lgnu/lists/TreeList;->oindex:I

    iget-object v1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lgnu/lists/TreeList;->resizeObjects()V

    .line 372
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    iget v1, p0, Lgnu/lists/TreeList;->oindex:I

    aput-object p1, v0, v1

    .line 373
    iget v0, p0, Lgnu/lists/TreeList;->oindex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->oindex:I

    return v0
.end method

.method public firstAttributePos(I)I
    .locals 2
    .param p1, "ipos"    # I

    .line 1039
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 1040
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public firstChildPos(I)I
    .locals 2
    .param p1, "ipos"    # I

    .line 900
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v0

    .line 901
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 902
    const/4 v1, 0x0

    return v1

    .line 903
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, "i":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1063
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v0

    .line 1064
    if-eqz v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1067
    :cond_1
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeCount(I)I
    .locals 4
    .param p1, "parent"    # I

    .line 1020
    const/4 v0, 0x0

    .line 1021
    .local v0, "n":I
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result v1

    .line 1022
    .local v1, "attr":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 1024
    add-int/lit8 v0, v0, 0x1

    .line 1023
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    goto :goto_0

    .line 1025
    .end local v1    # "attr":I
    :cond_0
    return v0
.end method

.method protected getIndexDifference(II)I
    .locals 5
    .param p1, "ipos1"    # I
    .param p2, "ipos0"    # I

    .line 2278
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2279
    .local v0, "i0":I
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v1

    .line 2280
    .local v1, "i1":I
    const/4 v2, 0x0

    .line 2281
    .local v2, "negate":Z
    if-le v0, v1, :cond_0

    .line 2283
    const/4 v2, 0x1

    .line 2284
    move v3, v1

    .local v3, "i":I
    move v1, v0

    move v0, v3

    .line 2286
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 2287
    .restart local v3    # "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2289
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 2290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2292
    :cond_1
    if-eqz v2, :cond_2

    neg-int v4, v3

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    return v4
.end method

.method protected final getIntN(I)I
    .locals 3
    .param p1, "index"    # I

    .line 379
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    aget-char v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getLongN(I)J
    .locals 8
    .param p1, "index"    # I

    .line 385
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    .line 386
    .local v0, "data":[C
    aget-char v1, v0, p1

    int-to-long v1, v1

    const-wide/32 v3, 0xffff

    and-long/2addr v1, v3

    const/16 v5, 0x30

    shl-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x1

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x2

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x3

    aget-char v5, v0, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public getNextKind(I)I
    .locals 1
    .param p1, "ipos"    # I

    .line 1533
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getNextKindI(I)I

    move-result v0

    return v0
.end method

.method public getNextKindI(I)I
    .locals 6
    .param p1, "index"    # I

    .line 1538
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1539
    return v1

    .line 1540
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 1541
    .local v0, "datum":C
    const v2, 0x9fff

    if-gt v0, v2, :cond_1

    .line 1542
    const/16 v1, 0x1d

    return v1

    .line 1543
    :cond_1
    const v2, 0xe000

    const/16 v3, 0x20

    if-lt v0, v2, :cond_2

    const v2, 0xefff

    if-gt v0, v2, :cond_2

    .line 1545
    return v3

    .line 1546
    :cond_2
    const v2, 0xa000

    const/16 v4, 0x21

    if-lt v0, v2, :cond_3

    const v2, 0xafff

    if-gt v0, v2, :cond_3

    .line 1548
    return v4

    .line 1549
    :cond_3
    const v2, 0xff00

    and-int/2addr v2, v0

    const v5, 0xf000

    if-ne v2, v5, :cond_4

    .line 1550
    const/16 v1, 0x1c

    return v1

    .line 1551
    :cond_4
    const v2, 0xb000

    const/16 v5, 0x16

    if-lt v0, v2, :cond_5

    const v2, 0xdfff

    if-gt v0, v2, :cond_5

    .line 1553
    return v5

    .line 1554
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 1594
    :pswitch_0
    return v3

    .line 1585
    :pswitch_1
    const/16 v1, 0x24

    return v1

    .line 1583
    :pswitch_2
    const/16 v1, 0x1f

    return v1

    .line 1587
    :pswitch_3
    const/16 v1, 0x25

    return v1

    .line 1571
    :pswitch_4
    add-int/lit8 v1, p1, 0x5

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v1

    return v1

    .line 1579
    :pswitch_5
    return v1

    .line 1581
    :pswitch_6
    const/16 v1, 0x23

    return v1

    .line 1573
    :pswitch_7
    return v4

    .line 1569
    :pswitch_8
    const/16 v1, 0x22

    return v1

    .line 1566
    :pswitch_9
    const/16 v1, 0x1a

    return v1

    .line 1564
    :pswitch_a
    const/16 v1, 0x19

    return v1

    .line 1562
    :pswitch_b
    const/16 v1, 0x18

    return v1

    .line 1560
    :pswitch_c
    return v5

    .line 1558
    :pswitch_d
    const/16 v1, 0x1b

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNextTypeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "ipos"    # I

    .line 1632
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1633
    .local v0, "type":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getNextTypeObject(I)Ljava/lang/Object;
    .locals 5
    .param p1, "ipos"    # I

    .line 1601
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1605
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1606
    return-object v2

    .line 1607
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    .line 1608
    .local v1, "datum":C
    const v3, 0xf112

    if-eq v1, v3, :cond_7

    .line 1609
    nop

    .line 1612
    const v3, 0xa000

    if-lt v1, v3, :cond_1

    const v4, 0xafff

    if-gt v1, v4, :cond_1

    .line 1614
    sub-int v0, v1, v3

    goto :goto_2

    .line 1615
    :cond_1
    const v3, 0xf108

    if-ne v1, v3, :cond_3

    .line 1617
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    .line 1618
    .local v3, "j":I
    if-gez v3, :cond_2

    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    array-length v4, v4

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    .line 1619
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1620
    .end local v3    # "j":I
    goto :goto_2

    .line 1621
    :cond_3
    const v3, 0xf109

    if-ne v1, v3, :cond_4

    .line 1622
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    goto :goto_2

    .line 1623
    :cond_4
    const v3, 0xf114

    if-ne v1, v3, :cond_6

    .line 1624
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1627
    :goto_2
    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v2, v0

    :goto_3
    return-object v2

    .line 1626
    :cond_6
    return-object v2

    .line 1610
    :cond_7
    add-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 3

    .line 1667
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1668
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 1669
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 1670
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 1671
    const v1, 0x9fff

    if-gt v0, v1, :cond_1

    .line 1672
    invoke-static {v0}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1673
    :cond_1
    const v1, 0xe000

    if-lt v0, v1, :cond_2

    const v2, 0xefff

    if-gt v0, v2, :cond_2

    .line 1675
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v0, v1

    aget-object p1, p1, v0

    return-object p1

    .line 1676
    :cond_2
    const v1, 0xa000

    if-lt v0, v1, :cond_3

    const v1, 0xafff

    if-gt v0, v1, :cond_3

    .line 1678
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v0, v0, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1683
    :cond_3
    const v1, 0xb000

    if-lt v0, v1, :cond_4

    const v1, 0xdfff

    if-gt v0, v1, :cond_4

    .line 1685
    const p1, 0xc000

    sub-int/2addr v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1686
    :cond_4
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1741
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPosNext, code="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1735
    :pswitch_1
    const-string p1, ""

    return-object p1

    .line 1690
    :pswitch_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1691
    if-gez v0, :cond_5

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_0

    :cond_5
    move v2, p1

    :goto_0
    add-int/2addr v0, v2

    .line 1692
    add-int/2addr v0, v1

    .line 1699
    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1737
    :pswitch_3
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    .line 1738
    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1739
    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object p1

    return-object p1

    .line 1733
    :pswitch_4
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 1730
    :pswitch_5
    sget-object p1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object p1

    .line 1716
    :pswitch_6
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1717
    if-gez v0, :cond_6

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_1

    :cond_6
    move v2, p1

    :goto_1
    add-int/2addr v0, v2

    .line 1718
    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1722
    :pswitch_7
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1723
    if-gez v0, :cond_7

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_2

    :cond_7
    move v1, p1

    :goto_2
    add-int/2addr v0, v1

    .line 1724
    add-int/lit8 v0, v0, 0x7

    invoke-direct {p0, p1, v0}, Lgnu/lists/TreeList;->copyToList(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1713
    :pswitch_8
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1711
    :pswitch_9
    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1709
    :pswitch_a
    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1707
    :pswitch_b
    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1705
    :pswitch_c
    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Lgnu/lists/Convert;->toObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1703
    :pswitch_d
    const p1, 0xf100

    if-eq v0, p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lgnu/lists/Convert;->toObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPosNextInt(I)I
    .locals 3
    .param p1, "ipos"    # I

    .line 1652
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1653
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1655
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    .line 1656
    .local v1, "datum":C
    const v2, 0xb000

    if-lt v1, v2, :cond_0

    const v2, 0xdfff

    if-gt v1, v2, :cond_0

    .line 1658
    const v2, 0xc000

    sub-int v2, v1, v2

    return v2

    .line 1659
    :cond_0
    const v2, 0xf102

    if-ne v1, v2, :cond_1

    .line 1660
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    return v2

    .line 1662
    .end local v1    # "datum":C
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    return v1
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 1
    .param p1, "ipos"    # I

    .line 1638
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1639
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1641
    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public gotoAttributesStart(I)I
    .locals 3
    .param p1, "index"    # I

    .line 1045
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 1046
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 1048
    return v1

    .line 1049
    :cond_1
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 1050
    .local v0, "datum":C
    const v2, 0xa000

    if-lt v0, v2, :cond_2

    const v2, 0xafff

    if-le v0, v2, :cond_3

    :cond_2
    const v2, 0xf108

    if-ne v0, v2, :cond_4

    .line 1053
    :cond_3
    add-int/lit8 v1, p1, 0x3

    return v1

    .line 1055
    :cond_4
    return v1
.end method

.method public gotoAttributesStart(Lgnu/lists/TreePosition;)Z
    .locals 3
    .param p1, "pos"    # Lgnu/lists/TreePosition;

    .line 1030
    iget v0, p1, Lgnu/lists/TreePosition;->ipos:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->gotoAttributesStart(I)I

    move-result v0

    .line 1031
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1032
    const/4 v1, 0x0

    return v1

    .line 1033
    :cond_0
    shl-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, p0, v2}, Lgnu/lists/TreePosition;->push(Lgnu/lists/AbstractSequence;I)V

    .line 1034
    return v1
.end method

.method public final gotoChildrenStart(I)I
    .locals 3
    .param p1, "index"    # I

    .line 908
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 909
    return v1

    .line 910
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 911
    .local v0, "datum":C
    const v2, 0xa000

    if-lt v0, v2, :cond_1

    const v2, 0xafff

    if-le v0, v2, :cond_2

    :cond_1
    const v2, 0xf108

    if-ne v0, v2, :cond_3

    .line 914
    :cond_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    .line 915
    :cond_3
    const v2, 0xf110

    if-eq v0, v2, :cond_5

    const v2, 0xf112

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 918
    :cond_4
    return v1

    .line 916
    :cond_5
    :goto_0
    add-int/lit8 p1, p1, 0x5

    .line 921
    :goto_1
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p1, v1, :cond_6

    .line 922
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 923
    :cond_6
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v1, p1

    .line 924
    const v1, 0xf109

    if-ne v0, v1, :cond_8

    .line 926
    add-int/lit8 v1, p1, 0x3

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 927
    .local v1, "end":I
    if-gez v1, :cond_7

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    goto :goto_2

    :cond_7
    move v2, p1

    :goto_2
    add-int p1, v1, v2

    .line 928
    .end local v1    # "end":I
    goto :goto_1

    .line 929
    :cond_8
    const v1, 0xf10a

    if-eq v0, v1, :cond_b

    const v1, 0xf116

    if-ne v0, v1, :cond_9

    goto :goto_3

    .line 931
    :cond_9
    const v1, 0xf118

    if-ne v0, v1, :cond_a

    .line 932
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    .line 936
    :cond_a
    return p1

    .line 930
    :cond_b
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public hasNext(I)Z
    .locals 4
    .param p1, "ipos"    # I

    .line 1523
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 1524
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1525
    return v2

    .line 1526
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    .line 1527
    .local v1, "ch":C
    const v3, 0xf10a

    if-eq v1, v3, :cond_1

    const v3, 0xf10b

    if-eq v1, v3, :cond_1

    const v3, 0xf10c

    if-eq v1, v3, :cond_1

    const v3, 0xf111

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .line 2298
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ignoring()Z
    .locals 1

    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 856
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 857
    .local v0, "pos":I
    :goto_0
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final nextDataIndex(I)I
    .locals 5
    .param p1, "pos"    # I

    .line 2173
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_0

    .line 2174
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2175
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    .line 2176
    return v1

    .line 2178
    :cond_1
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "pos":I
    .local v2, "pos":I
    aget-char p1, v0, p1

    .line 2179
    .local p1, "datum":C
    const v0, 0x9fff

    if-le p1, v0, :cond_b

    const v0, 0xe000

    if-lt p1, v0, :cond_2

    const v0, 0xefff

    if-le p1, v0, :cond_b

    :cond_2
    const v0, 0xb000

    if-lt p1, v0, :cond_3

    const v0, 0xdfff

    if-gt p1, v0, :cond_3

    goto/16 :goto_5

    .line 2185
    :cond_3
    const v0, 0xa000

    if-lt p1, v0, :cond_4

    const v0, 0xafff

    if-gt p1, v0, :cond_4

    .line 2187
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 2188
    :cond_4
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2243
    .local v0, "j":I
    :pswitch_0
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2188
    :pswitch_1
    goto :goto_0

    .line 2237
    :pswitch_2
    add-int/lit8 v2, v2, 0x2

    .line 2241
    :goto_0
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v3

    add-int/2addr v1, v3

    return v1

    .line 2195
    :pswitch_3
    add-int/lit8 v0, v2, 0x4

    .line 2198
    :goto_1
    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v3, :cond_5

    .line 2199
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2200
    :cond_5
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    if-ne v0, v3, :cond_6

    .line 2201
    return v1

    .line 2202
    :cond_6
    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v3, v3, v0

    const v4, 0xf113

    if-ne v3, v4, :cond_7

    .line 2203
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 2204
    :cond_7
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    goto :goto_1

    .line 2191
    .end local v0    # "j":I
    :pswitch_4
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 2192
    .restart local v0    # "j":I
    if-gez v0, :cond_8

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v2, -0x1

    :goto_2
    add-int/2addr v0, v1

    .line 2193
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 2218
    :pswitch_5
    add-int/lit8 v1, v2, 0x4

    return v1

    .line 2224
    :pswitch_6
    return v1

    .line 2230
    :pswitch_7
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 2231
    if-gez v0, :cond_9

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v2, -0x1

    :goto_3
    add-int/2addr v0, v1

    .line 2232
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 2226
    :pswitch_8
    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 2227
    if-gez v0, :cond_a

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v2, -0x1

    :goto_4
    add-int/2addr v0, v1

    .line 2228
    add-int/lit8 v1, v0, 0x7

    return v1

    .line 2211
    :pswitch_9
    add-int/lit8 v1, v2, 0x1

    return v1

    .line 2235
    :pswitch_a
    add-int/lit8 v1, v2, 0x4

    return v1

    .line 2216
    :pswitch_b
    add-int/lit8 v1, v2, 0x2

    return v1

    .line 2209
    :pswitch_c
    return v2

    .line 2184
    .end local v0    # "j":I
    :cond_b
    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_c
        :pswitch_1
    .end packed-switch
.end method

.method public nextMatching(ILgnu/lists/ItemPredicate;IZ)I
    .locals 7

    .line 1998
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p1

    .line 1999
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result p3

    .line 2000
    nop

    .line 2001
    instance-of v0, p2, Lgnu/lists/NodePredicate;

    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {p0, p1, p3}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    goto :goto_0

    .line 2001
    :cond_0
    move v0, p1

    .line 2003
    :goto_0
    nop

    .line 2007
    instance-of v1, p2, Lgnu/lists/ElementPredicate;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2009
    nop

    .line 2010
    nop

    .line 2011
    const/4 v1, 0x0

    const/4 v4, 0x1

    goto :goto_1

    .line 2013
    :cond_1
    instance-of v1, p2, Lgnu/lists/AttributePredicate;

    if-eqz v1, :cond_2

    .line 2015
    nop

    .line 2016
    nop

    .line 2017
    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1

    .line 2021
    :cond_2
    nop

    .line 2022
    nop

    .line 2023
    const/4 v1, 0x1

    const/4 v4, 0x1

    .line 2028
    :goto_1
    iget v5, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v5, :cond_3

    .line 2029
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 2030
    :cond_3
    if-lt v0, p3, :cond_4

    const/4 v5, -0x1

    if-eq p3, v5, :cond_4

    .line 2031
    return v2

    .line 2033
    :cond_4
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v5, v5, v0

    .line 2034
    const v6, 0x9fff

    if-le v5, v6, :cond_18

    const v6, 0xe000

    if-lt v5, v6, :cond_5

    const v6, 0xefff

    if-le v5, v6, :cond_18

    :cond_5
    const v6, 0xb000

    if-lt v5, v6, :cond_6

    const v6, 0xdfff

    if-gt v5, v6, :cond_6

    goto/16 :goto_6

    .line 2049
    :cond_6
    packed-switch v5, :pswitch_data_0

    .line 2139
    :pswitch_0
    const v6, 0xa000

    if-lt v5, v6, :cond_17

    const v6, 0xafff

    if-gt v5, v6, :cond_17

    .line 2142
    if-eqz p4, :cond_13

    .line 2143
    add-int/lit8 v5, v0, 0x3

    goto/16 :goto_4

    .line 2052
    :pswitch_1
    add-int/lit8 v0, v0, 0x3

    .line 2053
    goto/16 :goto_7

    .line 2121
    :pswitch_2
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 2122
    goto/16 :goto_5

    .line 2109
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 2110
    goto/16 :goto_7

    .line 2125
    :pswitch_4
    add-int/lit8 v5, v0, 0x3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 2126
    if-eqz v1, :cond_7

    goto/16 :goto_5

    :cond_7
    move v0, v5

    goto/16 :goto_7

    .line 2117
    :pswitch_5
    add-int/lit8 v5, v0, 0x5

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 2118
    goto/16 :goto_5

    .line 2059
    :pswitch_6
    add-int/lit8 v0, v0, 0x5

    .line 2060
    goto/16 :goto_7

    .line 2055
    :pswitch_7
    add-int/lit8 v5, v0, 0x5

    .line 2056
    goto/16 :goto_5

    .line 2077
    :pswitch_8
    add-int/lit8 v5, v0, 0x5

    .line 2078
    if-eqz v1, :cond_8

    goto/16 :goto_5

    :cond_8
    move v0, v5

    goto/16 :goto_7

    .line 2081
    :pswitch_9
    if-nez p4, :cond_9

    .line 2082
    return v2

    .line 2083
    :cond_9
    add-int/lit8 v0, v0, 0x7

    .line 2084
    goto/16 :goto_7

    .line 2072
    :pswitch_a
    if-nez p4, :cond_a

    .line 2073
    return v2

    .line 2074
    :cond_a
    add-int/lit8 v0, v0, 0x2

    .line 2075
    goto/16 :goto_7

    .line 2087
    :pswitch_b
    if-nez p4, :cond_b

    .line 2088
    return v2

    .line 2091
    :cond_b
    :pswitch_c
    add-int/lit8 v0, v0, 0x1

    .line 2092
    goto/16 :goto_7

    .line 2094
    :pswitch_d
    nop

    .line 2096
    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2097
    add-int/lit8 v6, v5, 0x1

    if-gez v5, :cond_c

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    :cond_c
    add-int/2addr v6, v0

    .line 2101
    move v0, v6

    goto/16 :goto_7

    .line 2129
    :pswitch_e
    if-eqz p4, :cond_d

    .line 2130
    add-int/lit8 v5, v0, 0x3

    goto :goto_3

    .line 2133
    :cond_d
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 2134
    if-gez v5, :cond_e

    iget-object v6, p0, Lgnu/lists/TreeList;->data:[C

    array-length v6, v6

    goto :goto_2

    :cond_e
    move v6, v0

    :goto_2
    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    .line 2136
    :goto_3
    if-eqz v4, :cond_f

    goto :goto_5

    :cond_f
    move v0, v5

    goto/16 :goto_7

    .line 2069
    :pswitch_f
    add-int/lit8 v0, v0, 0x2

    .line 2070
    goto/16 :goto_7

    .line 2113
    :pswitch_10
    add-int/lit8 v5, v0, 0x5

    .line 2114
    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move v0, v5

    goto/16 :goto_7

    .line 2065
    :pswitch_11
    add-int/lit8 v5, v0, 0x3

    .line 2066
    if-eqz v1, :cond_11

    goto :goto_5

    :cond_11
    move v0, v5

    goto :goto_7

    .line 2105
    :pswitch_12
    add-int/lit8 v5, v0, 0x1

    .line 2106
    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    move v0, v5

    goto :goto_7

    .line 2145
    :cond_13
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v0, 0x1

    aget-char v5, v5, v6

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x2

    .line 2146
    :goto_4
    if-eqz v4, :cond_16

    .line 2152
    :goto_5
    if-le v0, p1, :cond_15

    shl-int/lit8 v6, v0, 0x1

    invoke-interface {p2, p0, v6}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2154
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, p1, :cond_14

    .line 2155
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget p2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    .line 2156
    :cond_14
    shl-int/lit8 p1, v0, 0x1

    return p1

    .line 2026
    :cond_15
    move v0, v5

    goto :goto_7

    .line 2146
    :cond_16
    move v0, v5

    goto :goto_7

    .line 2149
    :cond_17
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown code:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2040
    :cond_18
    :goto_6
    if-eqz v1, :cond_1a

    shl-int/lit8 v5, v0, 0x1

    invoke-interface {p2, p0, v5}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2042
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, p1, :cond_19

    .line 2043
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget p2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr p1, p2

    sub-int/2addr v0, p1

    .line 2044
    :cond_19
    shl-int/lit8 p1, v0, 0x1

    return p1

    .line 2046
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 2047
    nop

    .line 2026
    :goto_7
    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_11
        :pswitch_11
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final nextNodeIndex(II)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .line 1942
    const/high16 v0, -0x80000000

    or-int/2addr v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1943
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, v0

    .line 1946
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_1

    .line 1947
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1948
    :cond_1
    if-lt p1, p2, :cond_2

    .line 1949
    return p1

    .line 1950
    :cond_2
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 1951
    .local v0, "datum":C
    const v1, 0x9fff

    if-le v0, v1, :cond_7

    const v1, 0xe000

    if-lt v0, v1, :cond_3

    const v1, 0xefff

    if-le v0, v1, :cond_7

    :cond_3
    const v1, 0xb000

    if-lt v0, v1, :cond_4

    const v1, 0xdfff

    if-le v0, v1, :cond_7

    :cond_4
    const v1, 0xff00

    and-int/2addr v1, v0

    const v2, 0xf000

    if-ne v1, v2, :cond_5

    goto :goto_2

    .line 1961
    :cond_5
    const v1, 0xa000

    if-lt v0, v1, :cond_6

    const v1, 0xafff

    if-gt v0, v1, :cond_6

    .line 1963
    return p1

    .line 1964
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1989
    :pswitch_0
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    .line 1990
    goto :goto_0

    .line 1967
    :pswitch_1
    add-int/lit8 p1, p1, 0x3

    .line 1968
    goto :goto_1

    .line 1970
    :pswitch_2
    add-int/lit8 p1, p1, 0x1

    .line 1971
    goto :goto_1

    .line 1979
    :pswitch_3
    add-int/lit8 p1, p1, 0x5

    .line 1980
    nop

    .line 1992
    .end local v0    # "datum":C
    :goto_1
    goto :goto_0

    .line 1986
    .restart local v0    # "datum":C
    :pswitch_4
    return p1

    .line 1977
    :pswitch_5
    return p1

    .line 1958
    :cond_7
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 1959
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xf108
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public nextPos(I)I
    .locals 3
    .param p1, "position"    # I

    .line 2163
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 2164
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2165
    const/4 v1, 0x0

    return v1

    .line 2166
    :cond_0
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt v0, v1, :cond_1

    .line 2167
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 2168
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public parentOrEntityI(I)I
    .locals 3

    .line 960
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    .line 961
    return v1

    .line 962
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 963
    const v2, 0xf110

    if-eq v0, v2, :cond_b

    const v2, 0xf112

    if-ne v0, v2, :cond_1

    goto :goto_3

    .line 971
    :cond_1
    const v2, 0xa000

    if-lt v0, v2, :cond_3

    const v2, 0xafff

    if-gt v0, v2, :cond_3

    .line 974
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, p1, 0x2

    aget-char v0, v0, v2

    .line 975
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sub-int v1, p1, v0

    :goto_0
    return v1

    .line 977
    :cond_3
    const v2, 0xf108

    if-ne v0, v2, :cond_7

    .line 979
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 980
    if-gez v0, :cond_4

    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    array-length p1, p1

    :cond_4
    add-int/2addr v0, p1

    .line 981
    add-int/lit8 p1, v0, 0x5

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 982
    if-nez p1, :cond_5

    .line 983
    return v1

    .line 984
    :cond_5
    if-gez p1, :cond_6

    .line 985
    add-int/2addr p1, v0

    .line 986
    :cond_6
    return p1

    .line 990
    :cond_7
    :goto_1
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne p1, v0, :cond_8

    .line 991
    iget p1, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 992
    :cond_8
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    if-ne p1, v0, :cond_9

    .line 993
    return v1

    .line 994
    :cond_9
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    .line 995
    sparse-switch v0, :sswitch_data_0

    .line 1010
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p1

    .line 1012
    if-gez p1, :cond_7

    .line 1013
    goto :goto_2

    .line 1008
    :sswitch_0
    return v1

    .line 1000
    :sswitch_1
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 1001
    if-gez v0, :cond_a

    .line 1002
    add-int/2addr v0, p1

    .line 1003
    :cond_a
    return v0

    .line 998
    :sswitch_2
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v0, v0, v1

    sub-int/2addr p1, v0

    return p1

    .line 1005
    :sswitch_3
    add-int/lit8 p1, p1, 0x1

    .line 1006
    goto :goto_1

    .line 1015
    :goto_2
    return v1

    .line 965
    :cond_b
    :goto_3
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 966
    if-lt v0, v1, :cond_c

    .line 967
    return v0

    .line 969
    :cond_c
    add-int/2addr p1, v0

    return p1

    :sswitch_data_0
    .sparse-switch
        0xf10a -> :sswitch_3
        0xf10b -> :sswitch_2
        0xf10c -> :sswitch_1
        0xf111 -> :sswitch_0
    .end sparse-switch
.end method

.method public parentOrEntityPos(I)I
    .locals 2
    .param p1, "ipos"    # I

    .line 954
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v0

    .line 955
    .local v0, "index":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public parentPos(I)I
    .locals 3
    .param p1, "ipos"    # I

    .line 941
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v0

    .line 944
    .local v0, "index":I
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->parentOrEntityI(I)I

    move-result v0

    .line 945
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 946
    return v1

    .line 947
    :cond_1
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf112

    if-eq v1, v2, :cond_0

    .line 948
    shl-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public final posToDataIndex(I)I
    .locals 3
    .param p1, "ipos"    # I

    .line 880
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 881
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    return v0

    .line 882
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 883
    .local v0, "index":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 884
    add-int/lit8 v0, v0, -0x1

    .line 885
    :cond_1
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt v0, v1, :cond_2

    .line 886
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 887
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 889
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    .line 890
    if-gez v0, :cond_3

    .line 891
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    return v1

    .line 892
    :cond_3
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v0, v1, :cond_4

    .line 893
    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 895
    :cond_4
    return v0
.end method

.method public final resizeObjects()V
    .locals 5

    .line 352
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "oldLength":I
    const/16 v1, 0x64

    .line 356
    .local v1, "newLength":I
    new-array v2, v1, [Ljava/lang/Object;

    .local v2, "tmp":[Ljava/lang/Object;
    goto :goto_0

    .line 360
    .end local v0    # "oldLength":I
    .end local v1    # "newLength":I
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v0, v0

    .line 361
    .restart local v0    # "oldLength":I
    mul-int/lit8 v1, v0, 0x2

    .line 362
    .restart local v1    # "newLength":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 363
    .restart local v2    # "tmp":[Ljava/lang/Object;
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :goto_0
    iput-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public setAttributeName(II)V
    .locals 1
    .param p1, "attrIndex"    # I
    .param p2, "nameIndex"    # I

    .line 665
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 666
    return-void
.end method

.method public setElementName(II)V
    .locals 2
    .param p1, "elementIndex"    # I
    .param p2, "nameIndex"    # I

    .line 579
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p1

    const v1, 0xf108

    if-ne v0, v1, :cond_1

    .line 581
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v0

    .line 582
    .local v0, "j":I
    if-gez v0, :cond_0

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    array-length v1, v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    add-int p1, v0, v1

    .line 584
    .end local v0    # "j":I
    :cond_1
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    if-lt p1, v0, :cond_2

    .line 586
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 587
    return-void

    .line 585
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "setElementName before gapEnd"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIntN(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "i"    # I

    .line 394
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    shr-int/lit8 v1, p2, 0x10

    int-to-char v1, v1

    aput-char v1, v0, p1

    .line 395
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v1, p1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 396
    return-void
.end method

.method public size()I
    .locals 2

    .line 862
    const/4 v0, 0x0

    .line 863
    .local v0, "size":I
    const/4 v1, 0x0

    .line 866
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    .line 867
    if-nez v1, :cond_0

    .line 868
    return v0

    .line 869
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startAttribute(I)V
    .locals 3
    .param p1, "index"    # I

    .line 651
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 652
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 653
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf109

    aput-char v2, v0, v1

    .line 654
    iget v0, p0, Lgnu/lists/TreeList;->attrStart:I

    if-nez v0, :cond_0

    .line 656
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    iput v0, p0, Lgnu/lists/TreeList;->attrStart:I

    .line 657
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 658
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 659
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 660
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10a

    aput-char v2, v0, v1

    .line 661
    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "nested attribute"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 626
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 627
    return-void
.end method

.method public startDocument()V
    .locals 4

    .line 500
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 501
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 502
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 503
    .local v0, "p":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    const v2, 0xf110

    aput-char v2, v1, v0

    .line 504
    iget v1, p0, Lgnu/lists/TreeList;->docStart:I

    if-nez v1, :cond_1

    .line 506
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/lists/TreeList;->docStart:I

    .line 507
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    array-length v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 508
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lgnu/lists/TreeList;->currentParent:I

    sub-int v3, v2, v0

    :goto_0
    invoke-virtual {p0, v1, v3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 509
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 510
    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 511
    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 512
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v3, 0xf111

    aput-char v3, v1, v2

    .line 513
    return-void

    .line 505
    :cond_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "nested document"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startElement(I)V
    .locals 3
    .param p1, "index"    # I

    .line 565
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 566
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, -0x7

    iput v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 567
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf108

    aput-char v2, v0, v1

    .line 568
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    array-length v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 569
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 570
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapEnd:I

    const v2, 0xf10c

    aput-char v2, v0, v1

    .line 571
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 572
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 573
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lgnu/lists/TreeList;->currentParent:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 574
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/lists/TreeList;->currentParent:I

    .line 575
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Object;

    .line 495
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->startElement(I)V

    .line 496
    return-void
.end method

.method public statistics()V
    .locals 2

    .line 2308
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2309
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->statistics(Ljava/io/PrintWriter;)V

    .line 2310
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2311
    return-void
.end method

.method public statistics(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 2315
    const-string v0, "data array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2316
    const-string v0, "data array gap: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2317
    const-string v0, "object array length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2318
    return-void
.end method

.method public stringValue(ILjava/lang/StringBuffer;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .line 1754
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v0

    .line 1755
    .local v0, "next":I
    if-le v0, p1, :cond_0

    .line 1757
    invoke-virtual {p0, p1, v0, p2}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 1758
    return p1

    .line 1761
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v1

    return v1
.end method

.method public stringValue(ZILjava/lang/StringBuffer;)I
    .locals 7

    .line 1766
    nop

    .line 1767
    nop

    .line 1768
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-lt p2, v0, :cond_0

    .line 1769
    iget v0, p0, Lgnu/lists/TreeList;->gapEnd:I

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 1770
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, -0x1

    if-ne p2, v0, :cond_1

    .line 1771
    return v1

    .line 1772
    :cond_1
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    aget-char v0, v0, p2

    .line 1773
    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 1774
    nop

    .line 1775
    const v3, 0x9fff

    if-gt v0, v3, :cond_2

    .line 1777
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1778
    return p2

    .line 1780
    :cond_2
    const v3, 0xe000

    const/4 v4, 0x0

    if-lt v0, v3, :cond_3

    const v5, 0xefff

    if-gt v0, v5, :cond_3

    .line 1783
    nop

    .line 1785
    iget-object p1, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v0, v3

    aget-object p1, p1, v0

    .line 1786
    goto/16 :goto_1

    .line 1788
    :cond_3
    const v3, 0xa000

    const/4 v5, 0x0

    if-lt v0, v3, :cond_4

    const v3, 0xafff

    if-gt v0, v3, :cond_4

    .line 1791
    add-int/lit8 v4, p2, 0x2

    .line 1792
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char p1, p1, p2

    add-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x1

    move-object p1, v5

    goto/16 :goto_1

    .line 1794
    :cond_4
    const v3, 0xff00

    and-int/2addr v3, v0

    const v6, 0xf000

    if-ne v3, v6, :cond_5

    .line 1796
    and-int/lit16 p1, v0, 0xff

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1797
    return p2

    .line 1799
    :cond_5
    const v3, 0xb000

    if-lt v0, v3, :cond_6

    const v3, 0xdfff

    if-gt v0, v3, :cond_6

    .line 1802
    const p1, 0xc000

    sub-int/2addr v0, p1

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1803
    return p2

    .line 1807
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1896
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unimplemented: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " at:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1810
    :pswitch_1
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1871
    :pswitch_2
    nop

    .line 1872
    move-object p1, v5

    goto :goto_1

    .line 1812
    :pswitch_3
    add-int/lit8 p2, p2, 0x2

    .line 1817
    :pswitch_4
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1818
    add-int/lit8 p2, p2, 0x2

    .line 1819
    if-eqz p1, :cond_7

    const p1, 0xf115

    if-ne v0, p1, :cond_8

    .line 1820
    :cond_7
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p3, p1, p2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1821
    :cond_8
    add-int/2addr p2, v1

    return p2

    .line 1860
    :pswitch_5
    add-int/lit8 v4, p2, 0x4

    .line 1861
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result p2

    .line 1862
    move-object p1, v5

    goto :goto_1

    .line 1887
    :pswitch_6
    iget-object v0, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    aget-object v0, v0, v1

    check-cast v0, Lgnu/lists/AbstractSequence;

    .line 1888
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v1

    .line 1889
    check-cast v0, Lgnu/lists/TreeList;

    shr-int/2addr v1, v2

    invoke-virtual {v0, p1, v1, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    .line 1890
    add-int/lit8 p2, p2, 0x4

    .line 1892
    move-object p1, v5

    goto :goto_1

    .line 1878
    :pswitch_7
    return v1

    .line 1880
    :pswitch_8
    if-nez p1, :cond_9

    .line 1881
    add-int/lit8 v4, p2, 0x4

    .line 1882
    :cond_9
    add-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1883
    if-gez p1, :cond_a

    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    add-int/2addr p2, v2

    :cond_a
    add-int/2addr p2, p1

    .line 1884
    move-object p1, v5

    goto :goto_1

    .line 1864
    :pswitch_9
    nop

    .line 1865
    add-int/lit8 v4, p2, 0x2

    .line 1866
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    .line 1867
    if-gez p1, :cond_b

    iget-object p2, p0, Lgnu/lists/TreeList;->data:[C

    array-length p2, p2

    goto :goto_0

    :cond_b
    add-int/lit8 p2, p2, -0x1

    :goto_0
    add-int/2addr p1, p2

    .line 1868
    add-int/lit8 p2, p1, 0x7

    .line 1869
    move-object p1, v5

    .line 1899
    :goto_1
    if-eqz p1, :cond_c

    .line 1900
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1901
    :cond_c
    if-lez v4, :cond_e

    .line 1905
    :cond_d
    invoke-virtual {p0, v2, v4, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v4

    .line 1907
    if-gez v4, :cond_d

    .line 1909
    :cond_e
    return p2

    .line 1855
    :pswitch_a
    nop

    .line 1856
    iget-object p1, p0, Lgnu/lists/TreeList;->data:[C

    aget-char p1, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1857
    add-int/2addr p2, v2

    return p2

    .line 1849
    :pswitch_b
    nop

    .line 1851
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 1852
    nop

    .line 1853
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1843
    :pswitch_c
    nop

    .line 1845
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1846
    nop

    .line 1847
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1837
    :pswitch_d
    nop

    .line 1839
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1840
    nop

    .line 1841
    add-int/lit8 p2, p2, 0x4

    return p2

    .line 1831
    :pswitch_e
    nop

    .line 1833
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1834
    nop

    .line 1835
    add-int/lit8 p2, p2, 0x2

    return p2

    .line 1825
    :pswitch_f
    nop

    .line 1827
    const p1, 0xf100

    if-eq v0, p1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1828
    nop

    .line 1829
    return p2

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public stringValue(IILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;

    .line 1747
    move v0, p1

    .line 1748
    .local v0, "index":I
    :goto_0
    if-ge v0, p2, :cond_0

    if-ltz v0, :cond_0

    .line 1749
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p3}, Lgnu/lists/TreeList;->stringValue(ZILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_0

    .line 1750
    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 11

    .line 1291
    nop

    .line 1292
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 1294
    nop

    .line 1295
    nop

    .line 1296
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1299
    :goto_0
    if-lt v2, v0, :cond_1

    .line 1301
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    if-ne v2, v0, :cond_0

    .line 1303
    iget v2, p0, Lgnu/lists/TreeList;->gapEnd:I

    .line 1304
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    .line 1305
    if-ne v2, v0, :cond_1

    .line 1306
    nop

    .line 1519
    :cond_0
    return-void

    .line 1312
    :cond_1
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v2, 0x1

    aget-char v2, v5, v2

    .line 1314
    const v5, 0x9fff

    const/16 v7, 0x3e

    if-gt v2, v5, :cond_5

    .line 1316
    add-int/lit8 v8, v6, -0x1

    .line 1317
    nop

    .line 1320
    :goto_1
    if-lt v6, v0, :cond_2

    .line 1321
    move v2, v6

    goto :goto_2

    .line 1322
    :cond_2
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v4, v6, 0x1

    aget-char v2, v2, v6

    .line 1323
    if-le v2, v5, :cond_4

    .line 1325
    add-int/lit8 v4, v4, -0x1

    .line 1326
    move v2, v4

    .line 1329
    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1330
    :cond_3
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    sub-int v5, v2, v8

    invoke-virtual {p2, v4, v8, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1331
    nop

    .line 1332
    const/4 v4, 0x0

    goto :goto_0

    .line 1323
    :cond_4
    move v6, v4

    goto :goto_1

    .line 1334
    :cond_5
    const v5, 0xe000

    const/4 v8, 0x1

    if-lt v2, v5, :cond_8

    const v9, 0xefff

    if-gt v2, v9, :cond_8

    .line 1337
    if-eqz v3, :cond_6

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1338
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    .line 1339
    :goto_3
    iget-object v7, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    sub-int/2addr v2, v5

    aget-object v2, v7, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1340
    move v2, v6

    goto :goto_0

    .line 1342
    :cond_8
    const/16 v5, 0x3c

    const v9, 0xa000

    if-lt v2, v9, :cond_b

    const v10, 0xafff

    if-gt v2, v10, :cond_b

    .line 1345
    if-eqz v3, :cond_9

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1346
    :cond_9
    sub-int/2addr v2, v9

    .line 1347
    if-eqz v4, :cond_a

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    :cond_a
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1349
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1350
    add-int/lit8 v2, v6, 0x2

    .line 1351
    nop

    .line 1352
    nop

    .line 1353
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1355
    :cond_b
    const v10, 0xb000

    if-lt v2, v10, :cond_e

    const v10, 0xdfff

    if-gt v2, v10, :cond_e

    .line 1358
    if-eqz v3, :cond_c

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1359
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    const/4 v4, 0x1

    .line 1360
    :goto_4
    const v5, 0xc000

    sub-int/2addr v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1361
    move v2, v6

    goto/16 :goto_0

    .line 1363
    :cond_e
    const/16 v10, 0x20

    packed-switch v2, :pswitch_data_0

    .line 1516
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown code:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1370
    :pswitch_1
    add-int/lit8 v2, v6, 0x2

    .line 1371
    goto/16 :goto_0

    .line 1373
    :pswitch_2
    if-eqz v3, :cond_f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1374
    :cond_f
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1375
    add-int/lit8 v6, v6, 0x2

    .line 1376
    const-string v5, "<!--"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1377
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, v5, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1378
    const-string v5, "-->"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1379
    add-int/2addr v2, v6

    .line 1380
    goto/16 :goto_0

    .line 1416
    :pswitch_3
    goto :goto_6

    .line 1382
    :pswitch_4
    if-eqz v3, :cond_10

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1383
    :cond_10
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1384
    add-int/lit8 v6, v6, 0x2

    .line 1385
    const-string v5, "<![CDATA["

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1386
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, v5, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1387
    const-string v5, "]]>"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    add-int/2addr v2, v6

    .line 1389
    goto/16 :goto_0

    .line 1391
    :pswitch_5
    if-eqz v3, :cond_11

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1392
    :cond_11
    const-string v2, "<?"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1394
    add-int/lit8 v6, v6, 0x2

    .line 1395
    iget-object v5, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v5, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1396
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1397
    add-int/lit8 v6, v6, 0x2

    .line 1398
    if-lez v2, :cond_12

    .line 1400
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1401
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, v5, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1402
    add-int/2addr v6, v2

    move v2, v6

    goto :goto_5

    .line 1398
    :cond_12
    move v2, v6

    .line 1404
    :goto_5
    const-string v5, "?>"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1405
    goto/16 :goto_0

    .line 1408
    :pswitch_6
    nop

    .line 1299
    :goto_6
    move v2, v6

    goto/16 :goto_0

    .line 1367
    :pswitch_7
    add-int/lit8 v2, v6, 0x4

    .line 1368
    goto/16 :goto_0

    .line 1424
    :pswitch_8
    if-eqz v3, :cond_13

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1425
    :cond_13
    if-eqz v4, :cond_14

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_14
    const/4 v4, 0x1

    .line 1427
    :goto_7
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    aget-object v2, v2, v5

    check-cast v2, Lgnu/lists/AbstractSequence;

    .line 1428
    add-int/lit8 v5, v6, 0x2

    invoke-virtual {p0, v5}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    .line 1430
    invoke-virtual {v2, v5}, Lgnu/lists/AbstractSequence;->getIteratorAtPos(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1431
    add-int/lit8 v2, v6, 0x4

    .line 1433
    goto/16 :goto_0

    .line 1436
    :pswitch_9
    if-eqz v3, :cond_15

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1437
    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_16
    const/4 v4, 0x1

    .line 1438
    :goto_8
    iget-object v2, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1439
    add-int/lit8 v2, v6, 0x2

    .line 1440
    goto/16 :goto_0

    .line 1455
    :pswitch_a
    const v4, 0xf10b

    if-ne v2, v4, :cond_17

    .line 1457
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v4, v6, 0x1

    aget-char v2, v2, v6

    .line 1458
    iget-object v5, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v6, v4, -0x2

    sub-int/2addr v6, v2

    aget-char v2, v5, v6

    sub-int/2addr v2, v9

    goto :goto_9

    .line 1462
    :cond_17
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1463
    add-int/lit8 v6, v6, 0x6

    move v4, v6

    .line 1465
    :goto_9
    if-eqz v3, :cond_18

    .line 1466
    const-string v2, "/>"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 1469
    :cond_18
    const-string v3, "</"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1470
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1471
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1473
    :goto_a
    nop

    .line 1474
    nop

    .line 1475
    move v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1486
    :pswitch_b
    const/16 v2, 0x22

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1487
    nop

    .line 1488
    nop

    .line 1489
    nop

    .line 1490
    move v2, v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1477
    :pswitch_c
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1478
    invoke-virtual {p2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1479
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1480
    const-string v2, "=\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1481
    nop

    .line 1482
    nop

    .line 1483
    add-int/lit8 v2, v6, 0x4

    .line 1484
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1442
    :pswitch_d
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1443
    if-ltz v2, :cond_19

    add-int/lit8 v9, v6, -0x1

    goto :goto_b

    :cond_19
    iget-object v9, p0, Lgnu/lists/TreeList;->data:[C

    array-length v9, v9

    :goto_b
    add-int/2addr v2, v9

    .line 1444
    add-int/lit8 v6, v6, 0x2

    .line 1445
    add-int/2addr v2, v8

    invoke-virtual {p0, v2}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    .line 1446
    if-eqz v3, :cond_1a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 1447
    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1448
    :cond_1b
    :goto_c
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1449
    iget-object v3, p0, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1450
    nop

    .line 1451
    nop

    .line 1452
    move v2, v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1418
    :pswitch_e
    if-eqz v3, :cond_1c

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1419
    :cond_1c
    iget-object v4, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v2, 0x1

    const v5, 0xf106

    sub-int/2addr v2, v5

    invoke-virtual {p2, v4, v6, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1420
    nop

    .line 1421
    add-int/lit8 v2, v6, 0x1

    .line 1422
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1510
    :pswitch_f
    if-eqz v3, :cond_1d

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1511
    :cond_1d
    if-eqz v4, :cond_1e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_1e
    const/4 v4, 0x1

    .line 1512
    :goto_d
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 1513
    add-int/lit8 v2, v6, 0x4

    .line 1514
    goto/16 :goto_0

    .line 1498
    :pswitch_10
    if-eqz v3, :cond_1f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1499
    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_20
    const/4 v4, 0x1

    .line 1500
    :goto_e
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1501
    add-int/lit8 v2, v6, 0x2

    .line 1502
    goto/16 :goto_0

    .line 1504
    :pswitch_11
    if-eqz v3, :cond_21

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1505
    :cond_21
    if-eqz v4, :cond_22

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_22
    const/4 v4, 0x1

    .line 1506
    :goto_f
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getLongN(I)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1507
    add-int/lit8 v2, v6, 0x4

    .line 1508
    goto/16 :goto_0

    .line 1492
    :pswitch_12
    if-eqz v3, :cond_23

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1493
    :cond_23
    if-eqz v4, :cond_24

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_24
    const/4 v4, 0x1

    .line 1494
    :goto_10
    invoke-virtual {p0, v6}, Lgnu/lists/TreeList;->getIntN(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1495
    add-int/lit8 v2, v6, 0x2

    .line 1496
    goto/16 :goto_0

    .line 1411
    :pswitch_13
    if-eqz v3, :cond_25

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 1412
    :cond_25
    if-eqz v4, :cond_26

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_26
    const/4 v4, 0x1

    .line 1413
    :goto_11
    const v5, 0xf100

    if-eq v2, v5, :cond_27

    goto :goto_12

    :cond_27
    const/4 v8, 0x0

    :goto_12
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1414
    move v2, v6

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xf100
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public write(I)V
    .locals 3
    .param p1, "c"    # I

    .line 689
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 690
    const v0, 0x9fff

    if-gt p1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    goto :goto_0

    .line 692
    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf106

    aput-char v2, v0, v1

    .line 695
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    goto :goto_0

    .line 698
    :cond_1
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 699
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 797
    if-nez p3, :cond_0

    .line 798
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 799
    :cond_0
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 800
    :goto_0
    if-lez p3, :cond_2

    .line 802
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "start":I
    .local v0, "start":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 803
    .local p2, "ch":C
    add-int/lit8 p3, p3, -0x1

    .line 804
    const v1, 0x9fff

    if-gt p2, v1, :cond_1

    .line 805
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char p2, v1, v2

    goto :goto_1

    .line 808
    :cond_1
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->write(I)V

    .line 809
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 811
    .end local p2    # "ch":C
    :goto_1
    move p2, v0

    goto :goto_0

    .line 812
    .end local v0    # "start":I
    .local p2, "start":I
    :cond_2
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/TreeList;->write(Ljava/lang/CharSequence;II)V

    .line 789
    return-void
.end method

.method public write([CII)V
    .locals 4
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 769
    if-nez p3, :cond_0

    .line 770
    invoke-virtual {p0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 771
    :cond_0
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 772
    :goto_0
    if-lez p3, :cond_2

    .line 774
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-char p2, p1, p2

    .line 775
    .local p2, "ch":C
    add-int/lit8 p3, p3, -0x1

    .line 776
    const v1, 0x9fff

    if-gt p2, v1, :cond_1

    .line 777
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    aput-char p2, v1, v2

    goto :goto_1

    .line 780
    :cond_1
    invoke-virtual {p0, p2}, Lgnu/lists/TreeList;->write(I)V

    .line 781
    invoke-virtual {p0, p3}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 783
    .end local p2    # "ch":C
    :goto_1
    move p2, v0

    goto :goto_0

    .line 784
    .end local v0    # "off":I
    .local p2, "off":I
    :cond_2
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .param p1, "v"    # Z

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 704
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    if-eqz p1, :cond_0

    const v2, 0xf101

    goto :goto_0

    :cond_0
    const v2, 0xf100

    :goto_0
    aput-char v2, v0, v1

    .line 705
    return-void
.end method

.method public writeByte(I)V
    .locals 4
    .param p1, "v"    # I

    .line 709
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 710
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    and-int/lit16 v2, p1, 0xff

    const v3, 0xf000

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 711
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 816
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 817
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 818
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf115

    aput-char v3, v1, v0

    .line 819
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 820
    add-int/lit8 v2, v2, 0x2

    .line 821
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    add-int v0, v2, p3

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 823
    return-void
.end method

.method public writeComment(Ljava/lang/String;II)V
    .locals 4
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 456
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 457
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 458
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf117

    aput-char v3, v1, v0

    .line 459
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 460
    add-int/lit8 v2, v2, 0x2

    .line 461
    add-int v0, p2, p3

    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p1, p2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 462
    add-int v0, v2, p3

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 463
    return-void
.end method

.method public writeComment([CII)V
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 445
    add-int/lit8 v0, p3, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 446
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 447
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf117

    aput-char v3, v1, v0

    .line 448
    invoke-virtual {p0, v2, p3}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 449
    add-int/lit8 v2, v2, 0x2

    .line 450
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    add-int v0, v2, p3

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 452
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/Object;

    .line 436
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 437
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, "index":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf118

    aput-char v3, v1, v2

    .line 439
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 440
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 441
    return-void
.end method

.method public writeDouble(D)V
    .locals 6
    .param p1, "v"    # D

    .line 747
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 748
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 749
    .local v0, "l":J
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const v4, 0xf105

    aput-char v4, v2, v3

    .line 750
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v4, 0x30

    ushr-long v4, v0, v4

    long-to-int v5, v4

    int-to-char v4, v5

    aput-char v4, v2, v3

    .line 751
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v5, v4

    int-to-char v4, v5

    aput-char v4, v2, v3

    .line 752
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v4, 0x10

    ushr-long v4, v0, v4

    long-to-int v5, v4

    int-to-char v4, v5

    aput-char v4, v2, v3

    .line 753
    iget-object v2, p0, Lgnu/lists/TreeList;->data:[C

    iget v3, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int v4, v0

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 754
    return-void
.end method

.method public writeFloat(F)V
    .locals 4
    .param p1, "v"    # F

    .line 738
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 739
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 740
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf104

    aput-char v3, v1, v2

    .line 741
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    ushr-int/lit8 v3, v0, 0x10

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 742
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    int-to-char v3, v0

    aput-char v3, v1, v2

    .line 743
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .param p1, "v"    # I

    .line 715
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 716
    const/16 v0, -0x1000

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1fff

    if-gt p1, v0, :cond_0

    .line 717
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xc000

    add-int/2addr v2, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf102

    aput-char v2, v0, v1

    .line 721
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 722
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 724
    :goto_0
    return-void
.end method

.method public writeJoiner()V
    .locals 3

    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 764
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf116

    aput-char v2, v0, v1

    .line 765
    return-void
.end method

.method public writeLong(J)V
    .locals 4
    .param p1, "v"    # J

    .line 728
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 729
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v2, 0xf103

    aput-char v2, v0, v1

    .line 730
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, v0, v1

    .line 731
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, v0, v1

    .line 732
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, v0, v1

    .line 733
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    long-to-int v2, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 734
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    .line 420
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 421
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 422
    .local v0, "index":I
    const/16 v1, 0x1000

    if-ge v0, v1, :cond_0

    .line 423
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xe000

    or-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, v1, v2

    goto :goto_0

    .line 426
    :cond_0
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10d

    aput-char v3, v1, v2

    .line 427
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    invoke-virtual {p0, v1, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 428
    iget v1, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 430
    :goto_0
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 4
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 410
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 411
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    const v3, 0xf10f

    aput-char v3, v1, v2

    .line 412
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v1

    .line 413
    .local v1, "seq_index":I
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 414
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2, p2}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 415
    iget v2, p0, Lgnu/lists/TreeList;->gapStart:I

    add-int/2addr v2, v0

    iput v2, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 416
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 482
    add-int/lit8 v0, p4, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 483
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 484
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf114

    aput-char v3, v1, v0

    .line 485
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 486
    .local v0, "index":I
    invoke-virtual {p0, v2, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 487
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 488
    add-int/lit8 v2, v2, 0x4

    .line 489
    add-int v1, p3, p4

    iget-object v3, p0, Lgnu/lists/TreeList;->data:[C

    invoke-virtual {p2, p3, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 490
    add-int v1, v2, p4

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 491
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 468
    add-int/lit8 v0, p4, 0x5

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->ensureSpace(I)V

    .line 469
    iget v0, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 470
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    const v3, 0xf114

    aput-char v3, v1, v0

    .line 471
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v0

    .line 472
    .local v0, "index":I
    invoke-virtual {p0, v2, v0}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 473
    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, v1, p4}, Lgnu/lists/TreeList;->setIntN(II)V

    .line 474
    add-int/lit8 v2, v2, 0x4

    .line 475
    iget-object v1, p0, Lgnu/lists/TreeList;->data:[C

    invoke-static {p2, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    add-int v1, v2, p4

    iput v1, p0, Lgnu/lists/TreeList;->gapStart:I

    .line 477
    return-void
.end method
