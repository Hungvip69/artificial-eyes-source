.class public Lgnu/kawa/xml/KElement;
.super Lgnu/kawa/xml/KNode;
.source "KElement.java"

# interfaces
.implements Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .locals 0
    .param p1, "seq"    # Lgnu/xml/NodeTree;
    .param p2, "ipos"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string p1, ""

    .line 43
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 44
    .local v0, "nodes":Lgnu/xml/NodeTree;
    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 45
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 46
    const-string v2, ""

    return-object v2

    .line 48
    :cond_1
    invoke-static {v0, v1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string p1, ""

    .line 137
    :cond_0
    if-nez p2, :cond_1

    .line 138
    const-string p2, ""

    .line 139
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 140
    .local v0, "nodes":Lgnu/xml/NodeTree;
    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, "attr":I
    if-nez v1, :cond_2

    .line 142
    const-string v2, ""

    return-object v2

    .line 144
    :cond_2
    invoke-static {v0, v1}, Lgnu/kawa/xml/KElement;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAttributeNode(Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string p1, ""

    .line 107
    :cond_0
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 108
    .local v0, "nodes":Lgnu/xml/NodeTree;
    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 110
    return-object v2

    .line 112
    :cond_1
    new-instance v2, Lgnu/kawa/xml/KAttr;

    invoke-direct {v2, v0, v1}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v2
.end method

.method public bridge synthetic getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Lgnu/kawa/xml/KElement;->getAttributeNode(Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 178
    if-nez p1, :cond_0

    .line 179
    const-string p1, ""

    .line 180
    :cond_0
    if-nez p2, :cond_1

    .line 181
    const-string p2, ""

    .line 182
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    .line 183
    .local v0, "nodes":Lgnu/xml/NodeTree;
    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "attr":I
    if-nez v1, :cond_2

    .line 185
    const/4 v2, 0x0

    return-object v2

    .line 187
    :cond_2
    new-instance v2, Lgnu/kawa/xml/KAttr;

    invoke-direct {v2, v0, v1}, Lgnu/kawa/xml/KAttr;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v2
.end method

.method public bridge synthetic getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/xml/KElement;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getElementsByTagNameNS not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNodeType()S
    .locals 1

    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->getNextTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, "attr":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string p1, ""

    .line 219
    :cond_0
    if-nez p2, :cond_1

    .line 220
    const-string p2, ""

    .line 221
    :cond_1
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/xml/NodeTree;->getAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "attr":I
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasAttributes()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lgnu/kawa/xml/KElement;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KElement;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posHasAttributes(I)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "removeAttribute not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "removeAttributeNS not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 3
    .param p1, "oldAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "removeAttributeNode not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setAttribute not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setAttributeNS not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 3
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 120
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setAttributeNode not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 3
    .param p1, "newAttr"    # Lorg/w3c/dom/Attr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 195
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setAttributeNodeNS not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setIdAttribute not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setIdAttributeNS not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 3
    .param p1, "idAttr"    # Lorg/w3c/dom/Attr;
    .param p2, "isId"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 81
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "setIdAttributeNode not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
