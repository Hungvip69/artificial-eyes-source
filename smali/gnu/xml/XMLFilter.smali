.class public Lgnu/xml/XMLFilter;
.super Ljava/lang/Object;
.source "XMLFilter.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lgnu/text/SourceLocator;
.implements Lgnu/lists/XConsumer;
.implements Lgnu/lists/PositionConsumer;


# static fields
.field public static final COPY_NAMESPACES_INHERIT:I = 0x2

.field public static final COPY_NAMESPACES_PRESERVE:I = 0x1

.field private static final SAW_KEYWORD:I = 0x1

.field private static final SAW_WORD:I = 0x2


# instance fields
.field attrCount:I

.field attrLocalName:Ljava/lang/String;

.field attrPrefix:Ljava/lang/String;

.field base:Lgnu/lists/Consumer;

.field public transient copyNamespacesMode:I

.field currentNamespacePrefix:Ljava/lang/String;

.field protected ignoringLevel:I

.field in:Lgnu/text/LineBufferedReader;

.field inStartTag:Z

.field locator:Lgnu/text/SourceLocator;

.field mappingTable:[Lgnu/xml/MappingInfo;

.field mappingTableMask:I

.field private messages:Lgnu/text/SourceMessages;

.field mismatchReported:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field public namespacePrefixes:Z

.field protected nesting:I

.field public out:Lgnu/lists/Consumer;

.field previous:I

.field startIndexes:[I

.field protected stringizingElementNesting:I

.field protected stringizingLevel:I

.field tlist:Lgnu/lists/TreeList;

.field workStack:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 4
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 87
    const/4 v2, -0x1

    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 95
    const/4 v3, 0x0

    iput-object v3, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 100
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 115
    iput-boolean v1, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    .line 126
    const/16 v1, 0x80

    new-array v1, v1, [Lgnu/xml/MappingInfo;

    iput-object v1, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    .line 127
    iget-object v1, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    array-length v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    .line 717
    iput-object p1, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 718
    iput-object p1, p0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    .line 719
    instance-of v0, p1, Lgnu/xml/NodeTree;

    if-eqz v0, :cond_0

    .line 720
    move-object v0, p1

    check-cast v0, Lgnu/xml/NodeTree;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    goto :goto_0

    .line 722
    :cond_0
    new-instance v0, Lgnu/lists/TreeList;

    invoke-direct {v0}, Lgnu/lists/TreeList;-><init>()V

    iput-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    .line 724
    :goto_0
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 725
    return-void
.end method

.method public static duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "attrSymbol"    # Lgnu/mapping/Symbol;
    .param p1, "elementName"    # Ljava/lang/Object;

    .line 1445
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "duplicate attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1446
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1449
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1450
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1451
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1454
    if-eqz p1, :cond_1

    .line 1456
    const-string v2, " in <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1458
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1460
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private ensureSpaceInStartIndexes(I)V
    .locals 3
    .param p1, "oldSize"    # I

    .line 1430
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    if-nez v0, :cond_0

    .line 1432
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    goto :goto_0

    .line 1434
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1436
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 1437
    .local v0, "tmpn":[I
    iget-object v1, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1438
    iput-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    .line 1440
    .end local v0    # "tmpn":[I
    :cond_1
    :goto_0
    return-void
.end method

.method private ensureSpaceInWorkStack(I)V
    .locals 3
    .param p1, "oldSize"    # I

    .line 1416
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1418
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    goto :goto_0

    .line 1420
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 1422
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1423
    .local v0, "tmpn":[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    iput-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    .line 1426
    .end local v0    # "tmpn":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void
.end method

.method private mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 4
    .param p1, "list"    # Lgnu/xml/NamespaceBinding;
    .param p2, "node"    # Lgnu/xml/NamespaceBinding;

    .line 905
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne p2, v0, :cond_0

    .line 906
    return-object p1

    .line 907
    :cond_0
    iget-object v0, p2, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-direct {p0, p1, v0}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object p1

    .line 908
    iget-object v0, p2, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 909
    .local v0, "uri":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 911
    if-nez v0, :cond_1

    .line 912
    return-object p1

    .line 913
    :cond_1
    sget-object p1, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 915
    :cond_2
    iget-object v1, p2, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 916
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "found":Ljava/lang/String;
    if-nez v2, :cond_3

    if-nez v0, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 918
    :goto_0
    return-object p1

    .line 919
    :cond_4
    invoke-virtual {p0, v1, v0, p1}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    return-object v3
.end method

.method private resolve(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "isAttribute"    # Z

    .line 327
    const-string v0, ""

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 328
    return-object v0

    .line 329
    :cond_0
    iget-object v1, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v1, p1}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "uri":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 331
    return-object v1

    .line 332
    :cond_1
    if-eqz p1, :cond_2

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown namespace prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {p0, v3, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 334
    :cond_2
    return-object v0
.end method

.method private startAttributeCommon()Z
    .locals 4

    .line 924
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 925
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 926
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 927
    return v2

    .line 929
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v0, :cond_2

    .line 930
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 931
    :cond_2
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 932
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInStartIndexes(I)V

    .line 933
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    aput v3, v0, v2

    .line 934
    iget v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 935
    return v1
.end method


# virtual methods
.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "x0"    # C

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lgnu/xml/XMLFilter;
    .locals 0
    .param p1, "c"    # C

    .line 1293
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1294
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 1299
    if-nez p1, :cond_0

    .line 1300
    const-string p1, "null"

    .line 1301
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    .line 1302
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1307
    if-nez p1, :cond_0

    .line 1308
    const-string p1, "null"

    .line 1309
    :cond_0
    sub-int v0, p3, p2

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 1310
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

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(C)Lgnu/xml/XMLFilter;

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

    .line 27
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;)Lgnu/xml/XMLFilter;

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

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->append(Ljava/lang/CharSequence;II)Lgnu/xml/XMLFilter;

    move-result-object v0

    return-object v0
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/Object;

    .line 1280
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 1282
    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1532
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1533
    return-void
.end method

.method protected checkValidComment([CII)V
    .locals 5
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1129
    move v0, p3

    .line 1130
    .local v0, "i":I
    const/4 v1, 0x1

    .line 1131
    .local v1, "sawHyphen":Z
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1133
    add-int v2, p2, v0

    aget-char v2, p1, v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1134
    .local v2, "curHyphen":Z
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1136
    const/16 v3, 0x65

    const-string v4, "consecutive or final hyphen in XML comment"

    invoke-virtual {p0, v3, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1137
    goto :goto_2

    .line 1139
    :cond_1
    move v1, v2

    .line 1140
    .end local v2    # "curHyphen":Z
    goto :goto_0

    .line 1141
    :cond_2
    :goto_2
    return-void
.end method

.method protected checkWriteAtomic()Z
    .locals 2

    .line 602
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 603
    iget v1, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v1, :cond_0

    .line 604
    return v0

    .line 605
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method closeStartTag()V
    .locals 16

    .line 339
    move-object/from16 v0, p0

    iget v1, v0, Lgnu/xml/XMLFilter;->attrCount:I

    if-ltz v1, :cond_35

    iget v1, v0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v1, :cond_0

    goto/16 :goto_18

    .line 341
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgnu/xml/XMLFilter;->inStartTag:Z

    .line 342
    iput v1, v0, Lgnu/xml/XMLFilter;->previous:I

    .line 344
    iget-object v2, v0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 346
    :cond_1
    iget v2, v0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v2, :cond_2

    sget-object v2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v3, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v3, v3, -0x2

    aget-object v2, v2, v3

    check-cast v2, Lgnu/xml/NamespaceBinding;

    .line 349
    .local v2, "outer":Lgnu/xml/NamespaceBinding;
    :goto_0
    iget-object v3, v0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 353
    .local v3, "bindings":Lgnu/xml/NamespaceBinding;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, v0, Lgnu/xml/XMLFilter;->attrCount:I

    const/4 v6, 0x1

    if-gt v4, v5, :cond_10

    .line 355
    iget-object v5, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v6

    aget-object v5, v5, v7

    .line 356
    .local v5, "saved":Ljava/lang/Object;
    instance-of v7, v5, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_f

    .line 358
    move-object v7, v5

    check-cast v7, Lgnu/mapping/Symbol;

    .line 359
    .local v7, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v8

    .line 360
    .local v8, "prefix":Ljava/lang/String;
    const-string v9, ""

    if-ne v8, v9, :cond_3

    .line 361
    const/4 v8, 0x0

    .line 362
    :cond_3
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, "uri":Ljava/lang/String;
    if-ne v10, v9, :cond_4

    .line 364
    const/4 v10, 0x0

    .line 365
    :cond_4
    if-lez v4, :cond_5

    if-nez v8, :cond_5

    if-nez v10, :cond_5

    .line 366
    goto/16 :goto_6

    .line 367
    :cond_5
    const/4 v9, 0x0

    .line 368
    .local v9, "isOuter":Z
    move-object v11, v3

    .line 370
    .local v11, "ns":Lgnu/xml/NamespaceBinding;
    :goto_2
    if-ne v11, v2, :cond_6

    .line 371
    const/4 v9, 0x1

    .line 372
    :cond_6
    if-nez v11, :cond_8

    .line 374
    if-nez v8, :cond_7

    if-eqz v10, :cond_f

    .line 375
    :cond_7
    invoke-virtual {v0, v8, v10, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_6

    .line 378
    :cond_8
    iget-object v12, v11, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v12, v8, :cond_e

    .line 380
    iget-object v12, v11, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-eq v12, v10, :cond_f

    .line 382
    if-eqz v9, :cond_9

    .line 383
    invoke-virtual {v0, v8, v10, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    goto :goto_6

    .line 388
    :cond_9
    move-object v12, v3

    .line 391
    .local v12, "ns2":Lgnu/xml/NamespaceBinding;
    :goto_3
    if-nez v12, :cond_b

    .line 394
    const/4 v13, 0x1

    .line 396
    .local v13, "j":I
    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_ns_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 397
    .local v14, "nprefix":Ljava/lang/String;
    invoke-virtual {v3, v14}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_a

    .line 398
    nop

    .line 400
    .end local v13    # "j":I
    goto :goto_5

    .line 394
    .restart local v13    # "j":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 402
    .end local v13    # "j":I
    .end local v14    # "nprefix":Ljava/lang/String;
    :cond_b
    iget-object v13, v12, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-ne v13, v10, :cond_d

    .line 404
    iget-object v14, v12, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 405
    .restart local v14    # "nprefix":Ljava/lang/String;
    invoke-virtual {v3, v14}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-ne v13, v10, :cond_d

    .line 406
    nop

    .line 409
    .end local v12    # "ns2":Lgnu/xml/NamespaceBinding;
    :goto_5
    invoke-virtual {v0, v14, v10, v3}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 410
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v12

    .line 411
    .local v12, "local":Ljava/lang/String;
    if-nez v10, :cond_c

    .line 412
    const-string v10, ""

    .line 413
    :cond_c
    iget-object v13, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v15, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v15, v4

    sub-int/2addr v15, v6

    invoke-static {v10, v12, v14}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    aput-object v6, v13, v15

    .line 415
    .end local v12    # "local":Ljava/lang/String;
    .end local v14    # "nprefix":Ljava/lang/String;
    goto :goto_6

    .line 389
    .local v12, "ns2":Lgnu/xml/NamespaceBinding;
    :cond_d
    iget-object v12, v12, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_3

    .line 368
    .end local v12    # "ns2":Lgnu/xml/NamespaceBinding;
    :cond_e
    iget-object v11, v11, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_2

    .line 353
    .end local v5    # "saved":Ljava/lang/Object;
    .end local v7    # "sym":Lgnu/mapping/Symbol;
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "isOuter":Z
    .end local v10    # "uri":Ljava/lang/String;
    .end local v11    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_f
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 424
    .end local v4    # "i":I
    :cond_10
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    iget v5, v0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gt v4, v5, :cond_31

    .line 426
    iget-object v5, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v7, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v6

    aget-object v5, v5, v7

    .line 428
    .restart local v5    # "saved":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 430
    .local v7, "isNsNode":Z
    instance-of v8, v5, Lgnu/xml/MappingInfo;

    if-nez v8, :cond_12

    iget-object v8, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iget-object v9, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    if-ne v8, v9, :cond_11

    goto :goto_8

    .line 523
    :cond_11
    move-object v8, v5

    check-cast v8, Lgnu/mapping/Symbol;

    .line 524
    .local v8, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .line 525
    .local v9, "uri":Ljava/lang/String;
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v10

    .line 526
    .local v10, "local":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "info":Lgnu/xml/MappingInfo;
    goto/16 :goto_e

    .line 432
    .end local v8    # "sym":Lgnu/mapping/Symbol;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "local":Ljava/lang/String;
    .end local v11    # "info":Lgnu/xml/MappingInfo;
    :cond_12
    :goto_8
    instance-of v8, v5, Lgnu/xml/MappingInfo;

    if-eqz v8, :cond_17

    .line 434
    move-object v8, v5

    check-cast v8, Lgnu/xml/MappingInfo;

    .line 435
    .local v8, "info":Lgnu/xml/MappingInfo;
    iget-object v9, v8, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 436
    .local v9, "prefix":Ljava/lang/String;
    iget-object v10, v8, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 437
    .restart local v10    # "local":Ljava/lang/String;
    if-lez v4, :cond_15

    const-string v11, "xmlns"

    if-nez v9, :cond_13

    if-eq v10, v11, :cond_14

    :cond_13
    if-ne v9, v11, :cond_15

    .line 441
    :cond_14
    const/4 v7, 0x1

    .line 442
    const-string v11, "(namespace-node)"

    .local v11, "uri":Ljava/lang/String;
    goto :goto_a

    .line 445
    .end local v11    # "uri":Ljava/lang/String;
    :cond_15
    if-lez v4, :cond_16

    const/4 v11, 0x1

    goto :goto_9

    :cond_16
    const/4 v11, 0x0

    :goto_9
    invoke-direct {v0, v9, v11}, Lgnu/xml/XMLFilter;->resolve(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "uri":Ljava/lang/String;
    goto :goto_a

    .line 449
    .end local v8    # "info":Lgnu/xml/MappingInfo;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "local":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_17
    move-object v8, v5

    check-cast v8, Lgnu/mapping/Symbol;

    .line 450
    .local v8, "symbol":Lgnu/mapping/Symbol;
    invoke-virtual {v0, v8}, Lgnu/xml/XMLFilter;->lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;

    move-result-object v9

    .line 451
    .local v9, "info":Lgnu/xml/MappingInfo;
    iget-object v10, v9, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 452
    .local v10, "prefix":Ljava/lang/String;
    iget-object v11, v9, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 453
    .local v11, "local":Ljava/lang/String;
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    .line 455
    .local v8, "info":Lgnu/xml/MappingInfo;
    .local v9, "prefix":Ljava/lang/String;
    .local v10, "local":Ljava/lang/String;
    .local v11, "uri":Ljava/lang/String;
    :goto_a
    iget v12, v8, Lgnu/xml/MappingInfo;->tagHash:I

    .line 456
    .local v12, "hash":I
    iget v13, v0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v13, v12

    .line 458
    .local v13, "bucket":I
    iget-object v14, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v8, v14, v13

    .line 459
    const/4 v14, 0x0

    .line 463
    .local v14, "tagMatch":Lgnu/xml/MappingInfo;
    :goto_b
    if-nez v8, :cond_18

    .line 465
    move-object v8, v14

    .line 466
    new-instance v15, Lgnu/xml/MappingInfo;

    invoke-direct {v15}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v8, v15

    .line 467
    iput v12, v8, Lgnu/xml/MappingInfo;->tagHash:I

    .line 468
    iput-object v9, v8, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 469
    iput-object v10, v8, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 470
    iget-object v15, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v15, v15, v13

    iput-object v15, v8, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 471
    iget-object v15, v0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v8, v15, v13

    .line 472
    iput-object v11, v8, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 473
    invoke-static {v11, v10, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v15

    iput-object v15, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 474
    if-nez v4, :cond_1e

    .line 476
    new-instance v15, Lgnu/xml/XName;

    iget-object v1, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    invoke-direct {v15, v1, v3}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    move-object v1, v15

    .line 477
    .local v1, "xname":Lgnu/xml/XName;
    nop

    .line 478
    .local v15, "type":Ljava/lang/Object;
    iput-object v1, v8, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 479
    iput-object v3, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 480
    .end local v1    # "xname":Lgnu/xml/XName;
    goto :goto_d

    .line 483
    .end local v15    # "type":Ljava/lang/Object;
    :cond_18
    iget v1, v8, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v1, v12, :cond_30

    iget-object v1, v8, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v1, v10, :cond_30

    iget-object v1, v8, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v1, v9, :cond_30

    .line 487
    iget-object v1, v8, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 489
    iput-object v11, v8, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 490
    invoke-static {v11, v10, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    iput-object v1, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    goto :goto_c

    .line 492
    :cond_19
    iget-object v1, v8, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v1, v11, :cond_1a

    .line 493
    goto/16 :goto_16

    .line 494
    :cond_1a
    iget-object v1, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v1, :cond_1b

    .line 495
    invoke-static {v11, v10, v9}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    iput-object v1, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 496
    :cond_1b
    :goto_c
    if-nez v4, :cond_1d

    .line 498
    iget-object v1, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-eq v1, v3, :cond_1c

    iget-object v1, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    if-nez v1, :cond_30

    .line 501
    :cond_1c
    iget-object v1, v8, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 502
    .local v1, "type":Ljava/lang/Object;
    iput-object v3, v8, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 503
    if-nez v1, :cond_1e

    .line 505
    new-instance v15, Lgnu/xml/XName;

    iget-object v6, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    invoke-direct {v15, v6, v3}, Lgnu/xml/XName;-><init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V

    move-object v6, v15

    .line 506
    .local v6, "xname":Lgnu/xml/XName;
    move-object v1, v6

    .line 507
    iput-object v6, v8, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    .line 508
    .end local v6    # "xname":Lgnu/xml/XName;
    goto :goto_d

    .line 514
    .end local v1    # "type":Ljava/lang/Object;
    :cond_1d
    iget-object v1, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 515
    .restart local v1    # "type":Ljava/lang/Object;
    nop

    .line 519
    .end local v1    # "type":Ljava/lang/Object;
    :cond_1e
    :goto_d
    iget-object v1, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v6, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v6, v4

    const/4 v15, 0x1

    sub-int/2addr v6, v15

    aput-object v8, v1, v6

    .line 520
    .end local v12    # "hash":I
    .end local v13    # "bucket":I
    .end local v14    # "tagMatch":Lgnu/xml/MappingInfo;
    move-object v9, v11

    move-object v11, v8

    .line 530
    .end local v8    # "info":Lgnu/xml/MappingInfo;
    .local v9, "uri":Ljava/lang/String;
    .local v11, "info":Lgnu/xml/MappingInfo;
    :goto_e
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_f
    if-ge v1, v4, :cond_22

    .line 532
    iget-object v6, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v8, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v8, v1

    const/4 v12, 0x1

    sub-int/2addr v8, v12

    aget-object v6, v6, v8

    .line 534
    .local v6, "other":Ljava/lang/Object;
    instance-of v8, v6, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_1f

    .line 535
    move-object v8, v6

    check-cast v8, Lgnu/mapping/Symbol;

    .local v8, "osym":Lgnu/mapping/Symbol;
    goto :goto_10

    .line 536
    .end local v8    # "osym":Lgnu/mapping/Symbol;
    :cond_1f
    instance-of v8, v6, Lgnu/xml/MappingInfo;

    if-eqz v8, :cond_21

    .line 537
    move-object v8, v6

    check-cast v8, Lgnu/xml/MappingInfo;

    iget-object v8, v8, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 540
    .restart local v8    # "osym":Lgnu/mapping/Symbol;
    :goto_10
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v12

    if-ne v10, v12, :cond_21

    invoke-virtual {v8}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    if-ne v9, v12, :cond_21

    .line 543
    iget-object v12, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v13, v0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-object v12, v12, v13

    .line 544
    .local v12, "tag":Ljava/lang/Object;
    instance-of v13, v12, Lgnu/xml/MappingInfo;

    if-eqz v13, :cond_20

    .line 545
    move-object v13, v12

    check-cast v13, Lgnu/xml/MappingInfo;

    iget-object v12, v13, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 546
    :cond_20
    const/16 v13, 0x65

    invoke-static {v8, v12}, Lgnu/xml/XMLFilter;->duplicateAttributeMessage(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 530
    .end local v6    # "other":Ljava/lang/Object;
    .end local v8    # "osym":Lgnu/mapping/Symbol;
    .end local v12    # "tag":Ljava/lang/Object;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 550
    .end local v1    # "j":I
    :cond_22
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iget-object v6, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    if-ne v1, v6, :cond_29

    .line 552
    if-nez v4, :cond_23

    iget-object v1, v11, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto :goto_11

    :cond_23
    iget-object v1, v11, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 553
    .local v1, "type":Ljava/lang/Object;
    :goto_11
    iget v6, v11, Lgnu/xml/MappingInfo;->index:I

    .line 554
    .local v6, "index":I
    if-lez v6, :cond_24

    iget-object v8, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v8, v8, Lgnu/lists/TreeList;->objects:[Ljava/lang/Object;

    aget-object v8, v8, v6

    if-eq v8, v1, :cond_25

    .line 557
    :cond_24
    iget-object v8, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v8, v1}, Lgnu/lists/TreeList;->find(Ljava/lang/Object;)I

    move-result v6

    .line 558
    iput v6, v11, Lgnu/xml/MappingInfo;->index:I

    .line 560
    :cond_25
    if-nez v4, :cond_26

    .line 561
    iget-object v8, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v12, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v12, v12, Lgnu/lists/TreeList;->gapEnd:I

    invoke-virtual {v8, v12, v6}, Lgnu/lists/TreeList;->setElementName(II)V

    goto :goto_12

    .line 562
    :cond_26
    if-eqz v7, :cond_27

    iget-boolean v8, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v8, :cond_28

    .line 563
    :cond_27
    iget-object v8, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v12, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    add-int/lit8 v13, v4, -0x1

    aget v12, v12, v13

    invoke-virtual {v8, v12, v6}, Lgnu/lists/TreeList;->setAttributeName(II)V

    .line 564
    .end local v1    # "type":Ljava/lang/Object;
    .end local v6    # "index":I
    :cond_28
    :goto_12
    goto :goto_15

    .line 567
    :cond_29
    if-nez v11, :cond_2a

    move-object v1, v5

    goto :goto_13

    :cond_2a
    if-nez v4, :cond_2b

    iget-object v1, v11, Lgnu/xml/MappingInfo;->type:Lgnu/xml/XName;

    goto :goto_13

    :cond_2b
    iget-object v1, v11, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 569
    .restart local v1    # "type":Ljava/lang/Object;
    :goto_13
    if-nez v4, :cond_2c

    .line 570
    iget-object v6, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v6, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    goto :goto_15

    .line 571
    :cond_2c
    if-eqz v7, :cond_2d

    iget-boolean v6, v0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v6, :cond_2f

    .line 573
    :cond_2d
    iget-object v6, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v6, v1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 574
    iget-object v6, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    add-int/lit8 v8, v4, -0x1

    aget v6, v6, v8

    .line 575
    .local v6, "start":I
    iget v8, v0, Lgnu/xml/XMLFilter;->attrCount:I

    if-ge v4, v8, :cond_2e

    iget-object v8, v0, Lgnu/xml/XMLFilter;->startIndexes:[I

    aget v8, v8, v4

    goto :goto_14

    :cond_2e
    iget-object v8, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v8, v8, Lgnu/lists/TreeList;->gapStart:I

    .line 576
    .local v8, "end":I
    :goto_14
    iget-object v12, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    add-int/lit8 v13, v6, 0x5

    add-int/lit8 v14, v8, -0x1

    iget-object v15, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-virtual {v12, v13, v14, v15}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 579
    iget-object v12, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    invoke-interface {v12}, Lgnu/lists/Consumer;->endAttribute()V

    .line 424
    .end local v1    # "type":Ljava/lang/Object;
    .end local v5    # "saved":Ljava/lang/Object;
    .end local v6    # "start":I
    .end local v7    # "isNsNode":Z
    .end local v8    # "end":I
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "local":Ljava/lang/String;
    .end local v11    # "info":Lgnu/xml/MappingInfo;
    :cond_2f
    :goto_15
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto/16 :goto_7

    .line 461
    .restart local v5    # "saved":Ljava/lang/Object;
    .restart local v7    # "isNsNode":Z
    .local v8, "info":Lgnu/xml/MappingInfo;
    .local v9, "prefix":Ljava/lang/String;
    .restart local v10    # "local":Ljava/lang/String;
    .local v11, "uri":Ljava/lang/String;
    .local v12, "hash":I
    .restart local v13    # "bucket":I
    .restart local v14    # "tagMatch":Lgnu/xml/MappingInfo;
    :cond_30
    :goto_16
    iget-object v8, v8, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    const/4 v1, 0x0

    const/4 v6, 0x1

    goto/16 :goto_b

    .line 585
    .end local v4    # "i":I
    .end local v5    # "saved":Ljava/lang/Object;
    .end local v7    # "isNsNode":Z
    .end local v8    # "info":Lgnu/xml/MappingInfo;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "local":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "hash":I
    .end local v13    # "bucket":I
    .end local v14    # "tagMatch":Lgnu/xml/MappingInfo;
    :cond_31
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    instance-of v1, v1, Lgnu/kawa/sax/ContentConsumer;

    if-eqz v1, :cond_32

    .line 586
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    check-cast v1, Lgnu/kawa/sax/ContentConsumer;

    invoke-virtual {v1}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 589
    :cond_32
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    iget v4, v0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gt v1, v4, :cond_33

    .line 590
    iget-object v4, v0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v5, v0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    aput-object v7, v4, v5

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 591
    .end local v1    # "i":I
    :cond_33
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iget-object v4, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    if-eq v1, v4, :cond_34

    .line 593
    iget-object v1, v0, Lgnu/xml/XMLFilter;->out:Lgnu/lists/Consumer;

    iput-object v1, v0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 595
    iget-object v1, v0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v1}, Lgnu/lists/TreeList;->clear()V

    .line 597
    :cond_34
    const/4 v1, -0x1

    iput v1, v0, Lgnu/xml/XMLFilter;->attrCount:I

    .line 598
    return-void

    .line 340
    .end local v2    # "outer":Lgnu/xml/NamespaceBinding;
    .end local v3    # "bindings":Lgnu/xml/NamespaceBinding;
    :cond_35
    :goto_18
    return-void
.end method

.method public commentFromParser([CII)V
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1157
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1160
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeComment([CII)V

    goto :goto_0

    .line 1163
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    .line 1164
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 1165
    :cond_1
    :goto_0
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .locals 2
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .line 653
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {p0, v0, v1}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 654
    return-void
.end method

.method public emitCharacterReference(I[CII)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "name"    # [C
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 1121
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 1122
    invoke-static {p1, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1125
    :goto_0
    return-void
.end method

.method public emitDoctypeDecl([CIIII)V
    .locals 0
    .param p1, "buffer"    # [C
    .param p2, "target"    # I
    .param p3, "tlength"    # I
    .param p4, "data"    # I
    .param p5, "dlength"    # I

    .line 1276
    return-void
.end method

.method public emitEndAttributes()V
    .locals 1

    .line 1005
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1007
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1008
    return-void
.end method

.method public emitEndElement([CII)V
    .locals 8
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1015
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    const/16 v1, 0x65

    if-eqz v0, :cond_0

    .line 1017
    const-string v0, "unclosed attribute"

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1018
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1022
    const-string v0, "unmatched end element"

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1023
    return-void

    .line 1025
    :cond_1
    if-eqz p1, :cond_4

    .line 1027
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 1028
    .local v0, "info":Lgnu/xml/MappingInfo;
    iget-object v2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 1029
    .local v2, "old":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/xml/MappingInfo;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    if-nez v3, :cond_4

    .line 1031
    move-object v3, v2

    check-cast v3, Lgnu/xml/MappingInfo;

    .line 1032
    .local v3, "mold":Lgnu/xml/MappingInfo;
    iget-object v5, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    iget-object v6, v3, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    iget-object v6, v3, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eq v5, v6, :cond_4

    .line 1034
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "</"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {v5, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 1036
    const-string v6, "> matching <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1037
    iget-object v6, v3, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1038
    .local v6, "oldPrefix":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1041
    const/16 v7, 0x3a

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1043
    :cond_3
    iget-object v7, v3, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    const/16 v7, 0x3e

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1045
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v7}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1046
    iput-boolean v4, p0, Lgnu/xml/XMLFilter;->mismatchReported:Z

    .line 1050
    .end local v0    # "info":Lgnu/xml/MappingInfo;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "mold":Lgnu/xml/MappingInfo;
    .end local v5    # "sbuf":Ljava/lang/StringBuffer;
    .end local v6    # "oldPrefix":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1051
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-gtz v0, :cond_5

    .line 1052
    return-void

    .line 1053
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1054
    return-void
.end method

.method public emitEntityReference([CII)V
    .locals 10
    .param p1, "name"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1088
    aget-char v0, p1, p2

    .line 1089
    .local v0, "c0":C
    const/16 v1, 0x3f

    .line 1090
    .local v1, "ch":C
    const/4 v2, 0x2

    const/16 v3, 0x74

    if-ne p3, v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget-char v2, p1, v2

    if-ne v2, v3, :cond_1

    .line 1093
    const/16 v2, 0x6c

    if-ne v0, v2, :cond_0

    .line 1094
    const/16 v1, 0x3c

    goto :goto_0

    .line 1095
    :cond_0
    const/16 v2, 0x67

    if-ne v0, v2, :cond_4

    .line 1096
    const/16 v1, 0x3e

    goto :goto_0

    .line 1098
    :cond_1
    const/16 v2, 0x70

    const/16 v4, 0x61

    const/4 v5, 0x3

    if-ne p3, v5, :cond_2

    .line 1100
    if-ne v0, v4, :cond_4

    add-int/lit8 v3, p2, 0x1

    aget-char v3, p1, v3

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, p2, 0x2

    aget-char v3, p1, v3

    if-ne v3, v2, :cond_4

    .line 1101
    const/16 v1, 0x26

    goto :goto_0

    .line 1103
    :cond_2
    const/4 v5, 0x4

    if-ne p3, v5, :cond_4

    .line 1105
    add-int/lit8 v5, p2, 0x1

    aget-char v5, p1, v5

    .line 1106
    .local v5, "c1":C
    add-int/lit8 v6, p2, 0x2

    aget-char v6, p1, v6

    .line 1107
    .local v6, "c2":C
    add-int/lit8 v7, p2, 0x3

    aget-char v7, p1, v7

    .line 1108
    .local v7, "c3":C
    const/16 v8, 0x71

    const/16 v9, 0x6f

    if-ne v0, v8, :cond_3

    const/16 v8, 0x75

    if-ne v5, v8, :cond_3

    if-ne v6, v9, :cond_3

    if-ne v7, v3, :cond_3

    .line 1109
    const/16 v1, 0x22

    goto :goto_0

    .line 1110
    :cond_3
    if-ne v0, v4, :cond_4

    if-ne v5, v2, :cond_4

    if-ne v6, v9, :cond_4

    const/16 v2, 0x73

    if-ne v7, v2, :cond_4

    .line 1111
    const/16 v1, 0x27

    .line 1113
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/xml/XMLFilter;->write(I)V

    .line 1114
    return-void
.end method

.method public emitStartAttribute([CII)V
    .locals 5
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 972
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 974
    :cond_0
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    return-void

    .line 977
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 978
    .local v0, "info":Lgnu/xml/MappingInfo;
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 979
    iget-object v1, v0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 980
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, v0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 981
    .local v2, "local":Ljava/lang/String;
    iput-object v2, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 982
    iput-object v1, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 983
    const-string v3, "xmlns"

    if-eqz v1, :cond_2

    .line 985
    if-ne v1, v3, :cond_3

    .line 987
    iput-object v2, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    goto :goto_0

    .line 992
    :cond_2
    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 994
    const-string v3, ""

    iput-object v3, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 997
    :cond_3
    :goto_0
    iget-object v3, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v3, :cond_5

    .line 998
    :cond_4
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 999
    :cond_5
    return-void
.end method

.method public emitStartElement([CII)V
    .locals 3
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 840
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 841
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->lookupTag([CII)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 842
    .local v0, "info":Lgnu/xml/MappingInfo;
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 843
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 844
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 845
    return-void
.end method

.method public endAttribute()V
    .locals 14

    .line 232
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 236
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 237
    return-void

    .line 239
    :cond_1
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-ltz v0, :cond_2

    .line 240
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    sub-int/2addr v0, v2

    iput v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    .line 241
    :cond_2
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    sub-int/2addr v0, v2

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_c

    .line 243
    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    const-string v3, "id"

    const v4, 0x9fff

    const v5, 0xffff

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    const-string v3, "xml"

    if-ne v0, v3, :cond_6

    .line 246
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    sub-int/2addr v3, v2

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x5

    .line 248
    .local v0, "valStart":I
    iget-object v3, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v3, v3, Lgnu/lists/TreeList;->gapStart:I

    .line 249
    .local v3, "valEnd":I
    iget-object v6, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    .line 250
    .local v6, "data":[C
    move v7, v0

    .line 252
    .local v7, "i":I
    :goto_0
    if-lt v7, v3, :cond_3

    .line 255
    goto :goto_2

    .line 257
    :cond_3
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget-char v7, v6, v7

    .line 258
    .local v7, "datum":C
    and-int v9, v7, v5

    if-gt v9, v4, :cond_5

    const/16 v9, 0x9

    if-eq v7, v9, :cond_5

    const/16 v9, 0xd

    if-eq v7, v9, :cond_5

    const/16 v9, 0xa

    if-eq v7, v9, :cond_5

    const/16 v9, 0x20

    if-ne v7, v9, :cond_4

    if-eq v8, v3, :cond_5

    aget-char v10, v6, v8

    if-ne v10, v9, :cond_4

    goto :goto_1

    .line 275
    .end local v7    # "datum":C
    :cond_4
    move v7, v8

    goto :goto_0

    .line 268
    .restart local v7    # "datum":C
    :cond_5
    :goto_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 269
    .local v9, "sbuf":Ljava/lang/StringBuffer;
    iget-object v10, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v10, v0, v3, v9}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 270
    iget-object v10, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput v0, v10, Lgnu/lists/TreeList;->gapStart:I

    .line 271
    iget-object v10, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lgnu/lists/TreeList;->write(Ljava/lang/String;)V

    .line 273
    nop

    .line 278
    .end local v0    # "valStart":I
    .end local v3    # "valEnd":I
    .end local v6    # "data":[C
    .end local v7    # "datum":C
    .end local v8    # "i":I
    .end local v9    # "sbuf":Ljava/lang/StringBuffer;
    :cond_6
    :goto_2
    const/4 v7, 0x0

    iput-object v7, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 279
    iput-object v7, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lgnu/xml/XMLFilter;->namespacePrefixes:Z

    if-eqz v0, :cond_8

    .line 281
    :cond_7
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v0}, Lgnu/lists/TreeList;->endAttribute()V

    .line 282
    :cond_8
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 285
    iget-object v0, p0, Lgnu/xml/XMLFilter;->startIndexes:[I

    iget v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    sub-int/2addr v3, v2

    aget v8, v0, v3

    .line 286
    .local v8, "attrStart":I
    move v0, v8

    .line 287
    .local v0, "uriStart":I
    iget-object v2, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget v2, v2, Lgnu/lists/TreeList;->gapStart:I

    .line 288
    .local v2, "uriEnd":I
    sub-int v3, v2, v0

    .line 289
    .local v3, "uriLength":I
    iget-object v6, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iget-object v6, v6, Lgnu/lists/TreeList;->data:[C

    .line 294
    .restart local v6    # "data":[C
    const/4 v9, 0x0

    .line 295
    .local v9, "uriHash":I
    move v10, v0

    .local v10, "i":I
    :goto_3
    if-ge v10, v2, :cond_a

    .line 297
    aget-char v11, v6, v10

    .line 298
    .local v11, "datum":C
    and-int v12, v11, v5

    if-le v12, v4, :cond_9

    .line 300
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v5, v0, v2, v4}, Lgnu/lists/TreeList;->stringValue(IILjava/lang/StringBuffer;)V

    .line 302
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 303
    const/4 v0, 0x0

    .line 304
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move v3, v5

    move v2, v5

    .line 305
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    new-array v6, v5, [C

    .line 306
    invoke-virtual {v4, v1, v2, v6, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 307
    move v10, v2

    move v11, v3

    move-object v12, v6

    move v13, v9

    move v9, v0

    goto :goto_4

    .line 309
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    :cond_9
    mul-int/lit8 v12, v9, 0x1f

    add-int v9, v12, v11

    .line 295
    .end local v11    # "datum":C
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    move v10, v2

    move v11, v3

    move-object v12, v6

    move v13, v9

    move v9, v0

    .line 311
    .end local v0    # "uriStart":I
    .end local v2    # "uriEnd":I
    .end local v3    # "uriLength":I
    .end local v6    # "data":[C
    .local v9, "uriStart":I
    .local v10, "uriEnd":I
    .local v11, "uriLength":I
    .local v12, "data":[C
    .local v13, "uriHash":I
    :goto_4
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput v8, v0, Lgnu/lists/TreeList;->gapStart:I

    .line 313
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_b

    move-object v1, v7

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    move-object v1, v0

    .line 315
    .local v1, "prefix":Ljava/lang/String;
    :goto_5
    iget-object v6, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    move-object v0, p0

    move-object v2, v12

    move v3, v9

    move v4, v11

    move v5, v13

    invoke-virtual/range {v0 .. v6}, Lgnu/xml/XMLFilter;->lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;

    move-result-object v0

    .line 318
    .local v0, "info":Lgnu/xml/MappingInfo;
    iget-object v2, v0, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    iput-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 320
    iput-object v7, p0, Lgnu/xml/XMLFilter;->currentNamespacePrefix:Ljava/lang/String;

    .line 323
    .end local v0    # "info":Lgnu/xml/MappingInfo;
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v8    # "attrStart":I
    .end local v9    # "uriStart":I
    .end local v10    # "uriEnd":I
    .end local v11    # "uriLength":I
    .end local v12    # "data":[C
    .end local v13    # "uriHash":I
    :cond_c
    return-void
.end method

.method public endDocument()V
    .locals 3

    .line 1248
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1250
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1251
    return-void

    .line 1253
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1254
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1255
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1256
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 1257
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1258
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    goto :goto_0

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1268
    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 3

    .line 1058
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1059
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1060
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 1061
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1063
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1064
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1065
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    aput-object v2, v0, v1

    .line 1066
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    goto :goto_0

    .line 1068
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v0, v2, :cond_1

    .line 1070
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 1071
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 1080
    :cond_1
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1526
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1527
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 1503
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endElement()V

    .line 1504
    return-void
.end method

.method public endEntity()V
    .locals 1

    .line 1286
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0}, Lgnu/lists/XConsumer;->endEntity()V

    .line 1288
    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1559
    iget-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1560
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 2
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;

    .line 1465
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_1

    .line 1467
    iget-object v0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    iget-object v1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    invoke-virtual {v0, p1, v1, p2}, Lgnu/text/SourceMessages;->error(CLgnu/text/SourceLocator;Ljava/lang/String;)V

    goto :goto_0

    .line 1470
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 1471
    :goto_0
    return-void

    .line 1466
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "oldBindings"    # Lgnu/xml/NamespaceBinding;

    .line 138
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 139
    .local v0, "hash":I
    :goto_0
    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 141
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v1, v0

    .line 142
    .local v1, "bucket":I
    iget-object v2, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v2, v1

    .line 145
    .local v2, "info":Lgnu/xml/MappingInfo;
    :goto_1
    if-nez v2, :cond_3

    .line 147
    new-instance v3, Lgnu/xml/MappingInfo;

    invoke-direct {v3}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v2, v3

    .line 148
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v3, v3, v1

    iput-object v3, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 149
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v3, v1

    .line 150
    iput v0, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 151
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 152
    iput-object p2, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 153
    iput-object p2, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 154
    const-string v3, ""

    if-ne p2, v3, :cond_2

    .line 155
    const/4 p2, 0x0

    .line 156
    :cond_2
    new-instance v3, Lgnu/xml/NamespaceBinding;

    invoke-direct {v3, p1, p2, p3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 158
    .local v3, "namespaces":Lgnu/xml/NamespaceBinding;
    iput-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 159
    iget-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    return-object v4

    .line 162
    .end local v3    # "namespaces":Lgnu/xml/NamespaceBinding;
    :cond_3
    iget v3, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v3, v0, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v3, p1, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v4, v3

    .local v4, "namespaces":Lgnu/xml/NamespaceBinding;
    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    iget-object v5, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v3, v5, :cond_4

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_4

    iget-object v3, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-ne v3, p2, :cond_4

    .line 169
    iget-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    return-object v3

    .line 143
    .end local v4    # "namespaces":Lgnu/xml/NamespaceBinding;
    :cond_4
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method public getColumnNumber()I
    .locals 2

    .line 1593
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    move v1, v0

    .local v1, "col":I
    if-lez v0, :cond_0

    goto :goto_0

    .end local v1    # "col":I
    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1579
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    .line 1584
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1585
    return v1

    .line 1586
    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    .line 1587
    .local v0, "line":I
    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_0
    return v1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 1569
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 1574
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1538
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 1539
    return-void
.end method

.method public ignoring()Z
    .locals 1

    .line 1475
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final inElement()Z
    .locals 3

    .line 755
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 757
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 758
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 759
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isStableSourceLocation()Z
    .locals 1

    .line 1598
    const/4 v0, 0x0

    return v0
.end method

.method public linefeedFromParser()V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 766
    :cond_0
    return-void
.end method

.method public lookupNamespaceBinding(Ljava/lang/String;[CIIILgnu/xml/NamespaceBinding;)Lgnu/xml/MappingInfo;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uriChars"    # [C
    .param p3, "uriStart"    # I
    .param p4, "uriLength"    # I
    .param p5, "uriHash"    # I
    .param p6, "oldBindings"    # Lgnu/xml/NamespaceBinding;

    .line 186
    if-nez p1, :cond_0

    move v0, p5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, p5

    .line 192
    .local v0, "hash":I
    :goto_0
    iget v1, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v1, v0

    .line 193
    .local v1, "bucket":I
    iget-object v2, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v2, v2, v1

    .line 196
    .local v2, "info":Lgnu/xml/MappingInfo;
    :goto_1
    if-nez v2, :cond_2

    .line 198
    new-instance v3, Lgnu/xml/MappingInfo;

    invoke-direct {v3}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v2, v3

    .line 199
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v3, v3, v1

    iput-object v3, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 200
    iget-object v3, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v2, v3, v1

    .line 201
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2, p3, p4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "uri":Ljava/lang/String;
    iput v0, v2, Lgnu/xml/MappingInfo;->tagHash:I

    .line 207
    iput-object p1, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 208
    iput-object v3, v2, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 209
    iput-object v3, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 210
    const-string v4, ""

    if-ne v3, v4, :cond_1

    .line 211
    const/4 v3, 0x0

    .line 212
    :cond_1
    new-instance v4, Lgnu/xml/NamespaceBinding;

    invoke-direct {v4, p1, v3, p6}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    .line 214
    .local v4, "namespaces":Lgnu/xml/NamespaceBinding;
    iput-object v4, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    .line 215
    return-object v2

    .line 218
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "namespaces":Lgnu/xml/NamespaceBinding;
    :cond_2
    iget v3, v2, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v3, v0, :cond_3

    iget-object v3, v2, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Lgnu/xml/MappingInfo;->namespaces:Lgnu/xml/NamespaceBinding;

    move-object v4, v3

    .restart local v4    # "namespaces":Lgnu/xml/NamespaceBinding;
    if-eqz v3, :cond_3

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v3

    iget-object v5, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    if-ne v3, v5, :cond_3

    invoke-virtual {v4}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    invoke-static {v3, p2, p3, p4}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    return-object v2

    .line 194
    .end local v4    # "namespaces":Lgnu/xml/NamespaceBinding;
    :cond_3
    iget-object v2, v2, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_1
.end method

.method lookupTag(Lgnu/mapping/Symbol;)Lgnu/xml/MappingInfo;
    .locals 8
    .param p1, "qname"    # Lgnu/mapping/Symbol;

    .line 1316
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 1317
    .local v0, "local":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "prefix":Ljava/lang/String;
    const-string v2, ""

    if-ne v1, v2, :cond_0

    .line 1319
    const/4 v1, 0x0

    .line 1320
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 1321
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v1, v0}, Lgnu/xml/MappingInfo;->hash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1322
    .local v3, "hash":I
    iget v4, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v4, v3

    .line 1323
    .local v4, "index":I
    iget-object v5, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v5, v5, v4

    .line 1324
    .local v5, "first":Lgnu/xml/MappingInfo;
    move-object v6, v5

    .line 1327
    .local v6, "info":Lgnu/xml/MappingInfo;
    :goto_0
    if-nez v6, :cond_1

    .line 1330
    new-instance v7, Lgnu/xml/MappingInfo;

    invoke-direct {v7}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v6, v7

    .line 1331
    iput-object p1, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1332
    iput-object v1, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1333
    iput-object v2, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1334
    iput-object v0, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1335
    iput v3, v6, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1336
    iput-object v5, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1337
    iget-object v7, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v5, v7, v4

    .line 1338
    return-object v6

    .line 1340
    :cond_1
    iget-object v7, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-ne p1, v7, :cond_2

    .line 1341
    return-object v6

    .line 1342
    :cond_2
    iget-object v7, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    if-ne v0, v7, :cond_4

    iget-object v7, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    if-nez v7, :cond_4

    iget-object v7, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-eq v2, v7, :cond_3

    iget-object v7, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    if-nez v7, :cond_4

    :cond_3
    iget-object v7, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-ne v1, v7, :cond_4

    .line 1346
    iput-object v2, v6, Lgnu/xml/MappingInfo;->uri:Ljava/lang/String;

    .line 1347
    iput-object p1, v6, Lgnu/xml/MappingInfo;->qname:Lgnu/mapping/Symbol;

    .line 1348
    return-object v6

    .line 1350
    :cond_4
    iget-object v6, v6, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_0
.end method

.method lookupTag([CII)Lgnu/xml/MappingInfo;
    .locals 9
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1365
    const/4 v0, 0x0

    .line 1366
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 1367
    .local v1, "prefixHash":I
    const/4 v2, -0x1

    .line 1368
    .local v2, "colon":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_1

    .line 1370
    add-int v4, p2, v3

    aget-char v4, p1, v4

    .line 1371
    .local v4, "ch":C
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    if-gez v2, :cond_0

    .line 1373
    move v2, v3

    .line 1374
    move v1, v0

    .line 1375
    const/4 v0, 0x0

    goto :goto_1

    .line 1378
    :cond_0
    mul-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v4

    move v0, v5

    .line 1368
    .end local v4    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    .end local v3    # "i":I
    :cond_1
    xor-int/2addr v0, v1

    .line 1381
    iget v3, p0, Lgnu/xml/XMLFilter;->mappingTableMask:I

    and-int/2addr v3, v0

    .line 1382
    .local v3, "index":I
    iget-object v4, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aget-object v4, v4, v3

    .line 1383
    .local v4, "first":Lgnu/xml/MappingInfo;
    move-object v5, v4

    .line 1386
    .local v5, "info":Lgnu/xml/MappingInfo;
    :goto_2
    if-nez v5, :cond_3

    .line 1389
    new-instance v6, Lgnu/xml/MappingInfo;

    invoke-direct {v6}, Lgnu/xml/MappingInfo;-><init>()V

    move-object v5, v6

    .line 1390
    iput v0, v5, Lgnu/xml/MappingInfo;->tagHash:I

    .line 1391
    if-ltz v2, :cond_2

    .line 1393
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1394
    add-int/lit8 v2, v2, 0x1

    .line 1395
    add-int v6, p2, v2

    .line 1396
    .local v6, "lstart":I
    new-instance v7, Ljava/lang/String;

    sub-int v8, p3, v2

    invoke-direct {v7, p1, v6, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1397
    .end local v6    # "lstart":I
    goto :goto_3

    .line 1400
    :cond_2
    const/4 v6, 0x0

    iput-object v6, v5, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    .line 1401
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    .line 1403
    :goto_3
    iput-object v4, v5, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    .line 1404
    iget-object v6, p0, Lgnu/xml/XMLFilter;->mappingTable:[Lgnu/xml/MappingInfo;

    aput-object v4, v6, v3

    .line 1405
    return-object v5

    .line 1407
    :cond_3
    iget v6, v5, Lgnu/xml/MappingInfo;->tagHash:I

    if-ne v0, v6, :cond_4

    invoke-virtual {v5, p1, p2, p3}, Lgnu/xml/MappingInfo;->match([CII)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1409
    return-object v5

    .line 1410
    :cond_4
    iget-object v5, v5, Lgnu/xml/MappingInfo;->nextInBucket:Lgnu/xml/MappingInfo;

    goto :goto_2
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 1546
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1547
    .local v0, "chars":[C
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1548
    return-void
.end method

.method processingInstructionCommon(Ljava/lang/String;[CII)V
    .locals 1
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1198
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1201
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_1

    .line 1202
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3, p4}, Lgnu/lists/XConsumer;->writeProcessingInstruction(Ljava/lang/String;[CII)V

    goto :goto_0

    .line 1205
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    .line 1206
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p2, p3, p4}, Lgnu/lists/Consumer;->write([CII)V

    .line 1207
    :cond_1
    :goto_0
    return-void
.end method

.method public processingInstructionFromParser([CIIII)V
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "tstart"    # I
    .param p3, "tlength"    # I
    .param p4, "dstart"    # I
    .param p5, "dlength"    # I

    .line 1215
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-nez v0, :cond_0

    aget-char v0, p1, p2

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-char v0, p1, v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x2

    aget-char v0, p1, v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    .line 1219
    return-void

    .line 1220
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1221
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p4, p5}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1222
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 1481
    instance-of v0, p1, Lgnu/text/SourceLocator;

    if-eqz v0, :cond_0

    .line 1482
    move-object v0, p1

    check-cast v0, Lgnu/text/SourceLocator;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    .line 1485
    :cond_0
    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .param p1, "messages"    # Lgnu/text/SourceMessages;

    .line 68
    iput-object p1, p0, Lgnu/xml/XMLFilter;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/LineBufferedReader;)V
    .locals 0
    .param p1, "in"    # Lgnu/text/LineBufferedReader;

    .line 64
    iput-object p1, p0, Lgnu/xml/XMLFilter;->in:Lgnu/text/LineBufferedReader;

    iput-object p0, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public setSourceLocator(Lgnu/text/SourceLocator;)V
    .locals 0
    .param p1, "locator"    # Lgnu/text/SourceLocator;

    .line 66
    iput-object p1, p0, Lgnu/xml/XMLFilter;->locator:Lgnu/text/SourceLocator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1565
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 6
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 941
    instance-of v1, p1, Lgnu/mapping/Symbol;

    const/16 v2, 0x65

    if-eqz v1, :cond_1

    .line 943
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Symbol;

    .line 944
    .local v1, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 945
    .local v3, "local":Ljava/lang/String;
    iput-object v3, p0, Lgnu/xml/XMLFilter;->attrLocalName:Ljava/lang/String;

    .line 946
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lgnu/xml/XMLFilter;->attrPrefix:Ljava/lang/String;

    .line 947
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 948
    .local v4, "uri":Ljava/lang/String;
    const-string v5, "http://www.w3.org/2000/xmlns/"

    if-eq v4, v5, :cond_0

    const-string v5, ""

    if-ne v4, v5, :cond_1

    const-string v5, "xmlns"

    if-ne v3, v5, :cond_1

    .line 950
    :cond_0
    const-string v5, "arttribute name cannot be \'xmlns\' or in xmlns namespace"

    invoke-virtual {p0, v2, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 952
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .end local v3    # "local":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_1
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v1, v1, v4

    if-nez v1, :cond_2

    .line 953
    const-string v1, "attribute not allowed at document level"

    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 954
    :cond_2
    iget v1, p0, Lgnu/xml/XMLFilter;->attrCount:I

    if-gez v1, :cond_3

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-lez v1, :cond_3

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' follows non-attribute content"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 956
    :cond_3
    invoke-direct {p0}, Lgnu/xml/XMLFilter;->startAttributeCommon()Z

    move-result v1

    if-nez v1, :cond_4

    .line 957
    return-void

    .line 958
    :cond_4
    iget-object v1, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget v3, p0, Lgnu/xml/XMLFilter;->attrCount:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    aput-object p1, v1, v2

    .line 959
    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v1, :cond_5

    .line 960
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    goto :goto_0

    .line 962
    :cond_5
    iget-object v1, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v1, v0}, Lgnu/lists/TreeList;->startAttribute(I)V

    .line 963
    :goto_0
    return-void
.end method

.method public startDocument()V
    .locals 3

    .line 1226
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 1227
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_0

    .line 1228
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_1

    .line 1232
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-nez v0, :cond_1

    .line 1233
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    goto :goto_0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    .line 1236
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 1237
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v2, v0, v1

    .line 1241
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1242
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 1244
    :goto_1
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/Object;

    .line 849
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->startElementCommon()V

    .line 850
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-nez v0, :cond_b

    .line 852
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 853
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    .line 854
    iget v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-nez v0, :cond_0

    .line 855
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto/16 :goto_6

    .line 856
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_4

    .line 865
    :cond_1
    const/4 v0, 0x2

    .line 867
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lgnu/xml/XMLFilter;->nesting:I

    if-ne v0, v2, :cond_2

    .line 869
    const/4 v2, 0x0

    .line 870
    .local v2, "inherited":Lgnu/xml/NamespaceBinding;
    goto :goto_1

    .line 872
    .end local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    :cond_2
    iget-object v2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    .line 874
    iget-object v2, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lgnu/xml/NamespaceBinding;

    .line 875
    .restart local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    nop

    .line 878
    .end local v0    # "i":I
    :goto_1
    if-nez v2, :cond_4

    .line 881
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lgnu/xml/XName;

    invoke-virtual {v0}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_2
    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_6

    .line 885
    :cond_4
    iget v0, p0, Lgnu/xml/XMLFilter;->copyNamespacesMode:I

    if-ne v0, v1, :cond_5

    .line 886
    iput-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_6

    .line 887
    :cond_5
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_7

    .line 889
    move-object v0, p1

    check-cast v0, Lgnu/xml/XName;

    invoke-virtual {v0}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    .line 890
    .local v0, "preserved":Lgnu/xml/NamespaceBinding;
    invoke-static {v2, v0}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v1

    .line 891
    .local v1, "join":Lgnu/xml/NamespaceBinding;
    if-ne v1, v2, :cond_6

    .line 892
    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_3

    .line 894
    :cond_6
    invoke-direct {p0, v2, v0}, Lgnu/xml/XMLFilter;->mergeHelper(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    iput-object v3, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 895
    .end local v0    # "preserved":Lgnu/xml/NamespaceBinding;
    .end local v1    # "join":Lgnu/xml/NamespaceBinding;
    :goto_3
    goto :goto_6

    .line 897
    :cond_7
    iput-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_6

    .line 865
    .end local v2    # "inherited":Lgnu/xml/NamespaceBinding;
    .local v0, "i":I
    :cond_8
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 858
    .end local v0    # "i":I
    :cond_9
    :goto_4
    instance-of v0, p1, Lgnu/xml/XName;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lgnu/xml/XName;

    invoke-virtual {v0}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    goto :goto_5

    :cond_a
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    :goto_5
    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 900
    :cond_b
    :goto_6
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;

    .line 1490
    invoke-static {p1, p2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1491
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    .line 1492
    .local v0, "numAttributes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1494
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1495
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1498
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "atts"    # Lorg/xml/sax/AttributeList;

    .line 1508
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1509
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startElement(Ljava/lang/Object;)V

    .line 1510
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v0

    .line 1511
    .local v0, "attrLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1513
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object p1

    .line 1514
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 1515
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getType(I)Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, "type":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1517
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 1518
    invoke-virtual {p0, v3}, Lgnu/xml/XMLFilter;->write(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->endAttribute()V

    .line 1511
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1521
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected startElementCommon()V
    .locals 5

    .line 817
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 818
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 820
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    invoke-direct {p0, v0}, Lgnu/xml/XMLFilter;->ensureSpaceInWorkStack(I)V

    .line 821
    iget-object v0, p0, Lgnu/xml/XMLFilter;->workStack:[Ljava/lang/Object;

    iget v3, p0, Lgnu/xml/XMLFilter;->nesting:I

    iget-object v4, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v4, v0, v3

    .line 822
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->startElement(I)V

    .line 823
    iget-object v0, p0, Lgnu/xml/XMLFilter;->tlist:Lgnu/lists/TreeList;

    iput-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    .line 824
    iput v2, p0, Lgnu/xml/XMLFilter;->attrCount:I

    goto :goto_0

    .line 828
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    .line 829
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 830
    :cond_1
    iput v2, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 831
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_2

    .line 832
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    iput v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    .line 834
    :cond_2
    :goto_0
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    .line 835
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 1552
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xml/XMLFilter;->findNamespaceBinding(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/XMLFilter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 1555
    return-void
.end method

.method public textFromParser([CII)V
    .locals 3
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 771
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->inElement()Z

    move-result v0

    if-nez v0, :cond_2

    .line 773
    const/4 v0, 0x0

    .line 775
    .local v0, "i":I
    :goto_0
    if-ne v0, p3, :cond_0

    .line 776
    return-void

    .line 777
    :cond_0
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 779
    const/16 v1, 0x65

    const-string v2, "text at document level"

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 780
    nop

    .line 773
    .end local v0    # "i":I
    goto :goto_1

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "i":I
    :cond_2
    if-lez p3, :cond_4

    .line 786
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 787
    return-void

    .line 789
    :cond_3
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 791
    :cond_4
    :goto_1
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "v"    # I

    .line 611
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    .line 613
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 747
    if-nez p3, :cond_0

    .line 748
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 751
    :cond_1
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 738
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/xml/XMLFilter;->write(Ljava/lang/CharSequence;II)V

    .line 739
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 730
    if-nez p3, :cond_0

    .line 731
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->writeJoiner()V

    goto :goto_0

    .line 732
    :cond_0
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 734
    :cond_1
    :goto_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .line 617
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 619
    :cond_0
    return-void
.end method

.method public writeCDATA([CII)V
    .locals 1
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 806
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/XConsumer;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/XConsumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/XConsumer;->writeCDATA([CII)V

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->write([CII)V

    .line 813
    :cond_1
    :goto_0
    return-void
.end method

.method public writeComment([CII)V
    .locals 0
    .param p1, "chars"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1148
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->checkValidComment([CII)V

    .line 1149
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 1150
    return-void
.end method

.method public writeDocumentUri(Ljava/lang/Object;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/Object;

    .line 647
    iget v0, p0, Lgnu/xml/XMLFilter;->nesting:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    instance-of v0, v0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0, p1}, Lgnu/lists/TreeList;->writeDocumentUri(Ljava/lang/Object;)V

    .line 649
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "v"    # D

    .line 629
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 631
    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "v"    # F

    .line 623
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 625
    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "v"    # I

    .line 635
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 637
    :cond_0
    return-void
.end method

.method protected writeJoiner()V
    .locals 1

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 796
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0}, Lgnu/lists/TreeList;->writeJoiner()V

    .line 798
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "v"    # J

    .line 641
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->checkWriteAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 643
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 5
    .param p1, "v"    # Ljava/lang/Object;

    .line 674
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    .line 675
    return-void

    .line 676
    :cond_0
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    .line 678
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 679
    .local v0, "pos":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lgnu/xml/XMLFilter;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 680
    .end local v0    # "pos":Lgnu/lists/SeqPosition;
    goto :goto_1

    .line 681
    :cond_1
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-eqz v0, :cond_2

    .line 682
    move-object v0, p1

    check-cast v0, Lgnu/lists/TreeList;

    invoke-virtual {v0, p0}, Lgnu/lists/TreeList;->consume(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 683
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lgnu/lists/CharSeq;

    if-nez v0, :cond_4

    .line 685
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 686
    .local v0, "seq":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 687
    .local v1, "it":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 688
    .local v2, "wasAtomic":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 689
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/xml/XMLFilter;->writeObject(Ljava/lang/Object;)V

    .line 688
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "seq":Ljava/util/List;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "wasAtomic":Z
    .end local v3    # "i":I
    :cond_3
    goto :goto_1

    .line 691
    :cond_4
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-eqz v0, :cond_5

    .line 693
    move-object v0, p1

    check-cast v0, Lgnu/expr/Keyword;

    .line 694
    .local v0, "k":Lgnu/expr/Keyword;
    invoke-virtual {v0}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xml/XMLFilter;->startAttribute(Ljava/lang/Object;)V

    .line 695
    const/4 v1, 0x1

    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 696
    .end local v0    # "k":Lgnu/expr/Keyword;
    goto :goto_1

    .line 699
    :cond_5
    invoke-virtual {p0}, Lgnu/xml/XMLFilter;->closeStartTag()V

    .line 700
    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-eqz v0, :cond_6

    .line 702
    iget-object v0, p0, Lgnu/xml/XMLFilter;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 703
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    goto :goto_1

    .line 707
    :cond_6
    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 708
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 709
    :cond_7
    invoke-static {p1, p0}, Lgnu/xml/TextUtils;->textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 710
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 713
    :goto_1
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 2
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 658
    iget v0, p0, Lgnu/xml/XMLFilter;->ignoringLevel:I

    if-lez v0, :cond_0

    .line 659
    return-void

    .line 660
    :cond_0
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    const/4 v1, 0x2

    if-lez v0, :cond_2

    iget v0, p0, Lgnu/xml/XMLFilter;->previous:I

    if-ne v0, v1, :cond_2

    .line 662
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_1

    .line 663
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLFilter;->write(I)V

    .line 664
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 666
    :cond_2
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 667
    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingLevel:I

    if-lez v0, :cond_3

    iget v0, p0, Lgnu/xml/XMLFilter;->stringizingElementNesting:I

    if-gez v0, :cond_3

    .line 668
    iput v1, p0, Lgnu/xml/XMLFilter;->previous:I

    .line 669
    :cond_3
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1170
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1171
    add-int v0, p3, p4

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x65

    if-lt v0, p3, :cond_2

    .line 1173
    aget-char v2, p2, v0

    .line 1174
    .local v2, "ch":C
    :cond_0
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p3, :cond_1

    .line 1176
    aget-char v2, p2, v0

    .line 1177
    const/16 v3, 0x3f

    if-ne v2, v3, :cond_0

    .line 1179
    const-string v3, "\'?>\' is not allowed in a processing-instruction"

    invoke-virtual {p0, v1, v3}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1180
    nop

    .line 1183
    .end local v2    # "ch":C
    :cond_1
    goto :goto_0

    .line 1185
    .end local v0    # "i":I
    :cond_2
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1186
    const-string v0, "processing-instruction target may not be \'xml\' (ignoring case)"

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1188
    :cond_3
    invoke-static {p1}, Lgnu/xml/XName;->isNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing-instruction target \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' is not a valid Name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 1192
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/xml/XMLFilter;->processingInstructionCommon(Ljava/lang/String;[CII)V

    .line 1193
    return-void
.end method
