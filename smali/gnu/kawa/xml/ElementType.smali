.class public Lgnu/kawa/xml/ElementType;
.super Lgnu/kawa/xml/NodeType;
.source "ElementType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/ElementPredicate;


# static fields
.field public static final MATCH_ANY_LOCALNAME:Ljava/lang/String; = ""

.field public static final MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

.field public static final anyElement:Lgnu/kawa/xml/ElementType;

.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final typeElementType:Lgnu/bytecode/ClassType;


# instance fields
.field namespaceNodes:Lgnu/xml/NamespaceBinding;

.field qname:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lgnu/mapping/Symbol;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    .line 21
    invoke-static {v2, v2}, Lgnu/kawa/xml/ElementType;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/ElementType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->anyElement:Lgnu/kawa/xml/ElementType;

    .line 203
    const-string v0, "gnu.kawa.xml.ElementType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->typeElementType:Lgnu/bytecode/ClassType;

    .line 205
    sget-object v0, Lgnu/kawa/xml/ElementType;->typeElementType:Lgnu/bytecode/ClassType;

    const-string v1, "coerce"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->coerceMethod:Lgnu/bytecode/Method;

    .line 207
    sget-object v0, Lgnu/kawa/xml/ElementType;->typeElementType:Lgnu/bytecode/ClassType;

    const-string v1, "coerceOrNull"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/ElementType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .locals 1
    .param p1, "qname"    # Lgnu/mapping/Symbol;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lgnu/kawa/xml/ElementType;-><init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qname"    # Lgnu/mapping/Symbol;

    .line 51
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    .line 54
    return-void
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 166
    invoke-static {p0, p1, p2}, Lgnu/kawa/xml/ElementType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;

    move-result-object v0

    .line 167
    .local v0, "pos":Lgnu/kawa/xml/KElement;
    if-eqz v0, :cond_0

    .line 169
    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    check-cast v0, Lgnu/kawa/xml/KElement;

    .line 128
    .local v0, "pos":Lgnu/kawa/xml/KElement;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return-object v1

    .line 130
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 131
    const/4 p2, 0x0

    .line 134
    :cond_1
    invoke-virtual {v0}, Lgnu/kawa/xml/KElement;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, "curName":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_2

    .line 139
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Symbol;

    .line 140
    .local v3, "qname":Lgnu/mapping/Symbol;
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v3    # "curLocalName":Ljava/lang/String;
    .end local v4    # "curNamespaceURI":Ljava/lang/String;
    :cond_2
    instance-of v3, v2, Ljavax/xml/namespace/QName;

    if-eqz v3, :cond_3

    .line 146
    move-object v3, v2

    check-cast v3, Ljavax/xml/namespace/QName;

    .line 148
    .local v3, "qtype":Ljavax/xml/namespace/QName;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 154
    .end local v3    # "curLocalName":Ljava/lang/String;
    .end local v4    # "curNamespaceURI":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    .line 155
    .restart local v4    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 157
    .restart local v3    # "curLocalName":Ljava/lang/String;
    :goto_0
    if-eq p2, v3, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eq p1, v4, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 160
    :cond_5
    return-object v1

    .line 159
    :cond_6
    :goto_1
    return-object v0
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/ElementType;
    .locals 1
    .param p0, "qname"    # Lgnu/mapping/Symbol;

    .line 41
    new-instance v0, Lgnu/kawa/xml/ElementType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/ElementType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/ElementType;
    .locals 2
    .param p0, "namespaceURI"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    .line 30
    if-eqz p0, :cond_0

    .line 31
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .local v0, "qname":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 32
    .end local v0    # "qname":Lgnu/mapping/Symbol;
    :cond_0
    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 33
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    .restart local v0    # "qname":Lgnu/mapping/Symbol;
    goto :goto_0

    .line 35
    .end local v0    # "qname":Lgnu/mapping/Symbol;
    :cond_1
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 36
    .restart local v0    # "qname":Lgnu/mapping/Symbol;
    :goto_0
    new-instance v1, Lgnu/kawa/xml/ElementType;

    invoke-direct {v1, v0}, Lgnu/kawa/xml/ElementType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v1
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/ElementType;->coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;

    move-result-object v0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 1
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 66
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lgnu/kawa/xml/ElementType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 69
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .locals 2
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 174
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 175
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 177
    :cond_0
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 179
    sget-object v1, Lgnu/kawa/xml/ElementType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 180
    return-void
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 2

    .line 195
    new-instance v0, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 196
    .local v0, "element":Lgnu/kawa/xml/MakeElement;
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    iput-object v1, v0, Lgnu/kawa/xml/MakeElement;->tag:Lgnu/mapping/Symbol;

    .line 197
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/MakeElement;->setHandlingKeywordParameters(Z)V

    .line 198
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 200
    :cond_0
    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 58
    const-string v0, "gnu.kawa.xml.KElement"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .locals 1

    .line 185
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z
    .locals 5
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "elementType"    # Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "namespaceURI":Ljava/lang/String;
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "localName":Ljava/lang/String;
    instance-of v2, p3, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    .line 94
    move-object v2, p3

    check-cast v2, Lgnu/mapping/Symbol;

    .line 95
    .local v2, "qname":Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 99
    .end local v2    # "curLocalName":Ljava/lang/String;
    .end local v3    # "curNamespaceURI":Ljava/lang/String;
    :cond_0
    instance-of v2, p3, Ljavax/xml/namespace/QName;

    if-eqz v2, :cond_1

    .line 101
    move-object v2, p3

    check-cast v2, Ljavax/xml/namespace/QName;

    .line 103
    .local v2, "qtype":Ljavax/xml/namespace/QName;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "curLocalName":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v2    # "curLocalName":Ljava/lang/String;
    .end local v3    # "curNamespaceURI":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 110
    .restart local v3    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "curLocalName":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 113
    const/4 v1, 0x0

    .line 114
    :cond_2
    if-eq v1, v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-eq v0, v3, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    return v4
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/ElementType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .locals 2
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 78
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    .line 79
    .local v0, "kind":I
    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/xml/ElementType;->isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 81
    :cond_0
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 82
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/ElementType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 83
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 220
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/ElementType;->setName(Ljava/lang/String;)V

    .line 223
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Symbol;

    iput-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    .line 224
    return-void
.end method

.method public setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .locals 0
    .param p1, "bindings"    # Lgnu/xml/NamespaceBinding;

    .line 190
    iput-object p1, p0, Lgnu/kawa/xml/ElementType;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElementType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0}, Lgnu/kawa/xml/ElementType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lgnu/kawa/xml/ElementType;->qname:Lgnu/mapping/Symbol;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 215
    return-void
.end method
