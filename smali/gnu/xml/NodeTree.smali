.class public Lgnu/xml/NodeTree;
.super Lgnu/lists/TreeList;
.source "NodeTree.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field idCount:I

.field idNames:[Ljava/lang/String;

.field idOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    return-void
.end method

.method public static make()Lgnu/xml/NodeTree;
    .locals 1

    .line 33
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    return-object v0
.end method


# virtual methods
.method public ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "ipos"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 208
    nop

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 209
    const/4 v0, 0x0

    return v0

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "attr":I
    if-eqz v0, :cond_1

    .line 212
    return v0

    .line 213
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->parentPos(I)I

    move-result p1

    .line 214
    .end local v0    # "attr":I
    goto :goto_0
.end method

.method public baseUriOfPos(IZ)Lgnu/text/Path;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "resolveRelative"    # Z

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "uri":Lgnu/text/Path;
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v1

    .line 224
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 225
    const/4 v2, 0x0

    return-object v2

    .line 226
    :cond_0
    iget-object v2, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v2, v2, v1

    .line 227
    .local v2, "datum":C
    const/4 v3, 0x0

    .line 228
    .local v3, "base":Lgnu/text/Path;
    const v4, 0xf112

    if-ne v2, v4, :cond_2

    .line 230
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result v4

    .line 231
    .local v4, "oindex":I
    if-ltz v4, :cond_1

    .line 232
    iget-object v5, p0, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    aget-object v5, v5, v4

    invoke-static {v5}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v3

    .line 233
    .end local v4    # "oindex":I
    :cond_1
    goto :goto_1

    .line 234
    :cond_2
    const v4, 0xa000

    if-lt v2, v4, :cond_3

    const v4, 0xafff

    if-le v2, v4, :cond_4

    :cond_3
    const v4, 0xf108

    if-ne v2, v4, :cond_5

    .line 238
    :cond_4
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const-string v5, "base"

    invoke-virtual {p0, p1, v4, v5}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 239
    .local v4, "attr":I
    if-eqz v4, :cond_5

    .line 240
    invoke-static {p0, v4}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v3

    .line 242
    .end local v4    # "attr":I
    :cond_5
    :goto_1
    if-eqz v3, :cond_9

    .line 244
    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v4

    goto :goto_3

    :cond_7
    :goto_2
    move-object v4, v3

    :goto_3
    move-object v0, v4

    .line 245
    invoke-virtual {v0}, Lgnu/text/Path;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_8

    if-nez p2, :cond_9

    .line 246
    :cond_8
    return-object v0

    .line 248
    :cond_9
    invoke-virtual {p0, v1}, Lgnu/xml/NodeTree;->parentOrEntityI(I)I

    move-result v1

    .line 249
    const/4 v4, -0x1

    if-ne v1, v4, :cond_a

    .line 250
    return-object v0

    .line 251
    :cond_a
    shl-int/lit8 p1, v1, 0x1

    .line 252
    .end local v2    # "datum":C
    .end local v3    # "base":Lgnu/text/Path;
    goto :goto_0
.end method

.method enterID(Ljava/lang/String;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 302
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 303
    .local v0, "tmpNames":[Ljava/lang/String;
    iget-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 304
    .local v1, "tmpOffsets":[I
    if-nez v0, :cond_0

    .line 306
    const/16 v2, 0x40

    .line 307
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 308
    new-array v3, v2, [I

    iput-object v3, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    goto :goto_1

    .line 310
    .end local v2    # "size":I
    :cond_0
    iget v2, p0, Lgnu/xml/NodeTree;->idCount:I

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    array-length v3, v3

    move v4, v3

    .local v4, "size":I
    mul-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_3

    .line 312
    mul-int/lit8 v2, v4, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 313
    mul-int/lit8 v2, v4, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 314
    const/4 v2, 0x0

    iput v2, p0, Lgnu/xml/NodeTree;->idCount:I

    .line 315
    move v2, v4

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 317
    aget-object v3, v0, v2

    .line 318
    .local v3, "oldName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 319
    aget v5, v1, v2

    invoke-virtual {p0, v3, v5}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    .line 320
    .end local v3    # "oldName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 323
    mul-int/lit8 v2, v4, 0x2

    .end local v4    # "size":I
    .local v2, "size":I
    goto :goto_1

    .line 310
    .end local v2    # "size":I
    .restart local v4    # "size":I
    :cond_3
    move v2, v4

    .line 325
    .end local v4    # "size":I
    .restart local v2    # "size":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 326
    .local v3, "hash":I
    add-int/lit8 v4, v2, -0x1

    .line 327
    .local v4, "mask":I
    and-int v5, v3, v4

    .line 329
    .local v5, "index":I
    xor-int/lit8 v6, v3, -0x1

    shl-int/lit8 v6, v6, 0x1

    or-int/lit8 v6, v6, 0x1

    .line 332
    .local v6, "step":I
    :goto_2
    aget-object v7, v0, v5

    .line 333
    .local v7, "oldName":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 335
    aput-object p1, v0, v5

    .line 336
    aput p2, v1, v5

    .line 337
    nop

    .line 346
    .end local v7    # "oldName":Ljava/lang/String;
    iget v7, p0, Lgnu/xml/NodeTree;->idCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lgnu/xml/NodeTree;->idCount:I

    .line 347
    return-void

    .line 339
    .restart local v7    # "oldName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 342
    return-void

    .line 344
    :cond_5
    add-int v8, v5, v6

    and-int v5, v8, v4

    .line 345
    .end local v7    # "oldName":Ljava/lang/String;
    goto :goto_2
.end method

.method public getAttribute(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "parent"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v1, v0}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAttributeI(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "parent"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v0

    .line 166
    .local v0, "attr":I
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 168
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p3, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p2, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_3
    :goto_1
    return v0

    .line 167
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return v1
.end method

.method public getId()I
    .locals 1

    .line 42
    iget v0, p0, Lgnu/xml/NodeTree;->id:I

    if-nez v0, :cond_0

    .line 43
    sget v0, Lgnu/xml/NodeTree;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/xml/NodeTree;->counter:I

    iput v0, p0, Lgnu/xml/NodeTree;->id:I

    .line 44
    :cond_0
    iget v0, p0, Lgnu/xml/NodeTree;->id:I

    return v0
.end method

.method public getIteratorAtPos(I)Lgnu/lists/SeqPosition;
    .locals 1
    .param p1, "ipos"    # I

    .line 68
    invoke-static {p0, p1}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    return-object v0
.end method

.method public lookupID(Ljava/lang/String;)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 358
    .local v0, "tmpNames":[Ljava/lang/String;
    iget-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 359
    .local v1, "tmpOffsets":[I
    iget-object v2, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    array-length v2, v2

    .line 360
    .local v2, "size":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 361
    .local v3, "hash":I
    add-int/lit8 v4, v2, -0x1

    .line 362
    .local v4, "mask":I
    and-int v5, v3, v4

    .line 364
    .local v5, "index":I
    xor-int/lit8 v6, v3, -0x1

    shl-int/lit8 v6, v6, 0x1

    or-int/lit8 v6, v6, 0x1

    .line 367
    .local v6, "step":I
    :goto_0
    aget-object v7, v0, v5

    .line 368
    .local v7, "oldName":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 369
    const/4 v8, -0x1

    return v8

    .line 370
    :cond_0
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 372
    aget v8, v1, v5

    return v8

    .line 374
    :cond_1
    add-int v8, v5, v6

    and-int v5, v8, v4

    .line 375
    .end local v7    # "oldName":Ljava/lang/String;
    goto :goto_0
.end method

.method public makeIDtableIfNeeded()V
    .locals 5

    .line 275
    iget-object v0, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    const/16 v0, 0x40

    .line 280
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lgnu/xml/NodeTree;->idNames:[Ljava/lang/String;

    .line 281
    new-array v1, v0, [I

    iput-object v1, p0, Lgnu/xml/NodeTree;->idOffsets:[I

    .line 282
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->endPos()I

    move-result v1

    .line 283
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 286
    .local v2, "ipos":I
    :goto_0
    sget-object v3, Lgnu/kawa/xml/ElementType;->anyElement:Lgnu/kawa/xml/ElementType;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v1, v4}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v2

    .line 287
    if-nez v2, :cond_1

    .line 288
    nop

    .line 297
    return-void

    .line 291
    :cond_1
    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v4, "id"

    invoke-virtual {p0, v2, v3, v4}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 292
    .local v3, "attr":I
    if-eqz v3, :cond_2

    .line 294
    invoke-static {p0, v3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lgnu/xml/NodeTree;->enterID(Ljava/lang/String;I)V

    .line 296
    .end local v3    # "attr":I
    :cond_2
    goto :goto_0
.end method

.method public nextPos(I)I
    .locals 5
    .param p1, "position"    # I

    .line 21
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    .local v0, "isAfter":Z
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    .line 23
    .local v2, "index":I
    const v3, 0x7fffffff

    invoke-virtual {p0, v2, v3}, Lgnu/xml/NodeTree;->nextNodeIndex(II)I

    move-result v3

    .line 24
    .local v3, "next":I
    if-eq v3, v2, :cond_1

    .line 25
    shl-int/lit8 v1, v3, 0x1

    return v1

    .line 26
    :cond_1
    iget-object v4, p0, Lgnu/xml/NodeTree;->data:[C

    array-length v4, v4

    if-ne v2, v4, :cond_2

    .line 27
    return v1

    .line 28
    :cond_2
    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x3

    return v1
.end method

.method public posFirstChild(I)I
    .locals 4
    .param p1, "ipos"    # I

    .line 124
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->gotoChildrenStart(I)I

    move-result v0

    .line 125
    .local v0, "index":I
    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 126
    return v1

    .line 127
    :cond_0
    iget-object v2, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v2, v2, v0

    .line 128
    .local v2, "datum":C
    const v3, 0xf10b

    if-eq v2, v3, :cond_2

    const v3, 0xf10c

    if-eq v2, v3, :cond_2

    const v3, 0xf111

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    return v1

    .line 130
    :cond_2
    :goto_0
    return v1
.end method

.method public posHasAttributes(I)Z
    .locals 4
    .param p1, "ipos"    # I

    .line 136
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/xml/NodeTree;->gotoAttributesStart(I)I

    move-result v0

    .line 137
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 138
    return v1

    .line 139
    :cond_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v2, v2, v0

    const v3, 0xf109

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public posIsDefaultNamespace(ILjava/lang/String;)Z
    .locals 2
    .param p1, "ipos"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/Error;

    const-string v1, "posIsDefaultNamespace not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public posLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "ipos"    # I

    .line 92
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "type":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/xml/XName;

    if-eqz v1, :cond_0

    .line 94
    move-object v1, v0

    check-cast v1, Lgnu/xml/XName;

    invoke-virtual {v1}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 96
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public posLookupNamespaceURI(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ipos"    # I
    .param p2, "prefix"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v0

    .line 108
    .local v0, "kind":I
    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    .line 110
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "type":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/xml/XName;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v1

    check-cast v2, Lgnu/xml/XName;

    invoke-virtual {v2, p2}, Lgnu/xml/XName;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 114
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 109
    .end local v1    # "type":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "argument must be an element"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public posLookupPrefix(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ipos"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/Error;

    const-string v1, "posLookupPrefix not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public posNamespaceURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "ipos"    # I

    .line 73
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "type":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/xml/XName;

    if-eqz v1, :cond_0

    .line 75
    move-object v1, v0

    check-cast v1, Lgnu/xml/XName;

    invoke-virtual {v1}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 77
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 78
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public posPrefix(I)Ljava/lang/String;
    .locals 3
    .param p1, "ipos"    # I

    .line 83
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    return-object v1

    .line 86
    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 87
    .local v2, "colon":I
    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public posTarget(I)Ljava/lang/String;
    .locals 3
    .param p1, "ipos"    # I

    .line 192
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v0

    .line 193
    .local v0, "index":I
    iget-object v1, p0, Lgnu/xml/NodeTree;->data:[C

    aget-char v1, v1, v0

    const v2, 0xf114

    if-ne v1, v2, :cond_0

    .line 195
    iget-object v1, p0, Lgnu/xml/NodeTree;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/xml/NodeTree;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 194
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "expected process-instruction"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stableCompare(Lgnu/lists/AbstractSequence;)I
    .locals 4
    .param p1, "other"    # Lgnu/lists/AbstractSequence;

    .line 49
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lgnu/lists/TreeList;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result v1

    .line 57
    .local v1, "comp":I
    if-nez v1, :cond_3

    instance-of v2, p1, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lgnu/xml/NodeTree;->getId()I

    move-result v2

    .line 60
    .local v2, "id1":I
    move-object v3, p1

    check-cast v3, Lgnu/xml/NodeTree;

    invoke-virtual {v3}, Lgnu/xml/NodeTree;->getId()I

    move-result v3

    .line 61
    .local v3, "id2":I
    if-ge v2, v3, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    move v1, v0

    .line 63
    .end local v2    # "id1":I
    .end local v3    # "id2":I
    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 257
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 258
    .local v0, "wr":Lgnu/mapping/CharArrayOutPort;
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    .line 259
    .local v1, "xp":Lgnu/xml/XMLPrinter;
    invoke-virtual {p0, v1}, Lgnu/xml/NodeTree;->consume(Lgnu/lists/Consumer;)V

    .line 260
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 261
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public typedValue(I)Ljava/lang/Object;
    .locals 4
    .param p1, "ipos"    # I

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v2

    .line 183
    .local v2, "kind":I
    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance v3, Lgnu/kawa/xml/UntypedAtomic;

    invoke-direct {v3, v1}, Lgnu/kawa/xml/UntypedAtomic;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 185
    :cond_1
    :goto_0
    return-object v1
.end method
