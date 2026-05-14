.class public Lcom/google/appinventor/components/runtime/util/XmlParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# static fields
.field private static final CONTENT_TAG:Ljava/lang/String; = "$content"


# instance fields
.field private currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 20
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "$content"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 59
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v1    # "content":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 76
    :cond_2
    return-void
.end method

.method public getRoot()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 26
    .local v0, "el":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "$tag"

    invoke-virtual {v0, v1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "$namespaceUri"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const-string v2, "$localName"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "$namespace"

    if-eqz v2, :cond_1

    .line 30
    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .end local v1    # "parts":[Ljava/lang/String;
    goto :goto_1

    .line 33
    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 36
    .local v1, "attrs":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 37
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 39
    .end local v2    # "i":I
    :cond_2
    const-string v2, "$attributes"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "$content"

    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v2, :cond_4

    .line 42
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v2, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p3, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v2, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->stack:Ljava/util/Deque;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-interface {v2, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 49
    :cond_4
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->root:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 51
    :goto_3
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/XmlParser;->currentElement:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 52
    return-void
.end method
