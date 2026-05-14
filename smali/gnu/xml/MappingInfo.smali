.class final Lgnu/xml/MappingInfo;
.super Ljava/lang/Object;
.source "XMLFilter.java"


# instance fields
.field index:I

.field local:Ljava/lang/String;

.field namespaces:Lgnu/xml/NamespaceBinding;

.field nextInBucket:Lgnu/xml/MappingInfo;

.field prefix:Ljava/lang/String;

.field qname:Lgnu/mapping/Symbol;

.field tagHash:I

.field type:Lgnu/xml/XName;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1640
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/MappingInfo;->index:I

    return-void
.end method

.method static equals(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 1691
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1692
    .local v0, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 1693
    return v2

    .line 1694
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1695
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1696
    return v2

    .line 1694
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1697
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static equals(Ljava/lang/String;[CII)Z
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1702
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    .line 1703
    return v1

    .line 1704
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 1705
    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 1706
    return v1

    .line 1704
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1707
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static hash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "local"    # Ljava/lang/String;

    .line 1644
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1645
    .local v0, "hash":I
    if-eqz p0, :cond_0

    .line 1646
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1647
    :cond_0
    return v0
.end method

.method static hash([CII)I
    .locals 6
    .param p0, "data"    # [C
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1653
    const/4 v0, 0x0

    .line 1654
    .local v0, "hash":I
    const/4 v1, 0x0

    .line 1655
    .local v1, "prefixHash":I
    const/4 v2, -0x1

    .line 1656
    .local v2, "colonPos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 1658
    add-int v4, p1, v3

    aget-char v4, p0, v4

    .line 1659
    .local v4, "ch":C
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    if-gez v2, :cond_0

    .line 1661
    move v2, v3

    .line 1662
    move v1, v0

    .line 1663
    const/4 v0, 0x0

    goto :goto_1

    .line 1666
    :cond_0
    mul-int/lit8 v5, v0, 0x1f

    add-int/2addr v5, v4

    move v0, v5

    .line 1656
    .end local v4    # "ch":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1668
    .end local v3    # "i":I
    :cond_1
    xor-int v3, v1, v0

    return v3
.end method


# virtual methods
.method match([CII)Z
    .locals 5
    .param p1, "data"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 1674
    iget-object v0, p0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1677
    .local v0, "localLength":I
    iget-object v1, p0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1678
    .local v1, "prefixLength":I
    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v0

    if-ne p3, v2, :cond_0

    aget-char v2, p1, v1

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    invoke-static {v2, p1, p2, v1}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    add-int v3, p2, v1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v2, p1, v3, v0}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 1684
    .end local v0    # "localLength":I
    .end local v1    # "prefixLength":I
    :cond_1
    iget-object v0, p0, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v0

    return v0
.end method
