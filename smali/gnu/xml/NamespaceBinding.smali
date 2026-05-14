.class public final Lgnu/xml/NamespaceBinding;
.super Ljava/lang/Object;
.source "NamespaceBinding.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final XML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field public static final predefinedXML:Lgnu/xml/NamespaceBinding;


# instance fields
.field depth:I

.field next:Lgnu/xml/NamespaceBinding;

.field prefix:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lgnu/xml/NamespaceBinding;

    const-string v1, "http://www.w3.org/XML/1998/namespace"

    const/4 v2, 0x0

    const-string v3, "xml"

    invoke-direct {v0, v3, v1, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    sput-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "next"    # Lgnu/xml/NamespaceBinding;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 60
    invoke-virtual {p0, p3}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    .line 61
    return-void
.end method

.method public static commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 2
    .param p0, "ns1"    # Lgnu/xml/NamespaceBinding;
    .param p1, "ns2"    # Lgnu/xml/NamespaceBinding;

    .line 101
    iget v0, p0, Lgnu/xml/NamespaceBinding;->depth:I

    iget v1, p1, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v0, v1, :cond_0

    .line 103
    move-object v0, p0

    .line 104
    .local v0, "tmp":Lgnu/xml/NamespaceBinding;
    move-object p0, p1

    .line 105
    move-object p1, v0

    .line 107
    .end local v0    # "tmp":Lgnu/xml/NamespaceBinding;
    :cond_0
    :goto_0
    iget v0, p1, Lgnu/xml/NamespaceBinding;->depth:I

    iget v1, p0, Lgnu/xml/NamespaceBinding;->depth:I

    if-le v0, v1, :cond_1

    .line 108
    iget-object p1, p1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 109
    :cond_1
    :goto_1
    if-eq p0, p1, :cond_2

    .line 111
    iget-object p0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 112
    iget-object p1, p1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_1

    .line 114
    :cond_2
    return-object p0
.end method

.method public static maybeAdd(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "bindings"    # Lgnu/xml/NamespaceBinding;

    .line 166
    if-nez p2, :cond_1

    .line 168
    if-nez p1, :cond_0

    .line 169
    return-object p2

    .line 170
    :cond_0
    sget-object p2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 172
    :cond_1
    invoke-virtual {p2, p0}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "found":Ljava/lang/String;
    if-nez v0, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    :goto_0
    return-object p2

    .line 175
    :cond_3
    new-instance v1, Lgnu/xml/NamespaceBinding;

    invoke-direct {v1, p0, p1, p2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    return-object v1
.end method

.method public static final nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 1
    .param p0, "list1"    # Lgnu/xml/NamespaceBinding;
    .param p1, "list2"    # Lgnu/xml/NamespaceBinding;

    .line 48
    if-nez p0, :cond_0

    .line 49
    return-object p1

    .line 50
    :cond_0
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-static {v0, p1}, Lgnu/xml/NamespaceBinding;->nconc(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xml/NamespaceBinding;->setNext(Lgnu/xml/NamespaceBinding;)V

    .line 51
    return-object p0
.end method


# virtual methods
.method public count(Lgnu/xml/NamespaceBinding;)I
    .locals 2
    .param p1, "fencePost"    # Lgnu/xml/NamespaceBinding;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "count":I
    move-object v1, p0

    .local v1, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eq v1, p1, :cond_0

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 157
    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 159
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_0
    return v0
.end method

.method public final getNext()Lgnu/xml/NamespaceBinding;
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 210
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 211
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 212
    return-void
.end method

.method public resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 75
    move-object v0, p0

    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 78
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object v1

    .line 75
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 80
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fencePost"    # Lgnu/xml/NamespaceBinding;

    .line 90
    move-object v0, p0

    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eq v0, p2, :cond_1

    .line 92
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    .line 93
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object v1

    .line 90
    :cond_0
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 95
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public reversePrefix(Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;
    .locals 4
    .param p1, "fencePost"    # Lgnu/xml/NamespaceBinding;

    .line 139
    move-object v0, p1

    .line 140
    .local v0, "prev":Lgnu/xml/NamespaceBinding;
    move-object v1, p0

    .line 141
    .local v1, "t":Lgnu/xml/NamespaceBinding;
    if-nez p1, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    iget v2, p1, Lgnu/xml/NamespaceBinding;->depth:I

    .line 142
    .local v2, "depth":I
    :goto_0
    if-eq v1, p1, :cond_1

    .line 144
    iget-object v3, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 145
    .local v3, "next":Lgnu/xml/NamespaceBinding;
    iput-object v0, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 146
    move-object v0, v1

    .line 147
    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lgnu/xml/NamespaceBinding;->depth:I

    .line 148
    move-object v1, v3

    .line 149
    .end local v3    # "next":Lgnu/xml/NamespaceBinding;
    goto :goto_0

    .line 150
    :cond_1
    return-object v0
.end method

.method public final setNext(Lgnu/xml/NamespaceBinding;)V
    .locals 1
    .param p1, "next"    # Lgnu/xml/NamespaceBinding;

    .line 38
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lgnu/xml/NamespaceBinding;->depth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lgnu/xml/NamespaceBinding;->depth:I

    .line 40
    return-void
.end method

.method public final setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Namespace{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", depth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/xml/NamespaceBinding;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringAll()Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Namespaces{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    move-object v1, p0

    .local v1, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eqz v1, :cond_1

    .line 190
    iget-object v2, v1, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v2, v1, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    if-nez v1, :cond_0

    const-string v2, "\""

    goto :goto_1

    :cond_0
    const-string v2, "\", "

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, v1, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_0

    .line 195
    .end local v1    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
