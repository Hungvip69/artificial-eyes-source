.class public Lgnu/xquery/util/NamedCollator;
.super Ljava/text/Collator;
.source "NamedCollator.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final UNICODE_CODEPOINT_COLLATION:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/codepoint"

.field public static final codepointCollation:Lgnu/xquery/util/NamedCollator;


# instance fields
.field collator:Ljava/text/Collator;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    sput-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 38
    sget-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    iput-object v1, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/text/Collator;-><init>()V

    return-void
.end method

.method public static codepointCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    .local v0, "i1":I
    const/4 v1, 0x0

    .line 56
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 57
    .local v2, "len1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 60
    .local v3, "len2":I
    :goto_0
    const/4 v4, -0x1

    if-ne v0, v2, :cond_1

    .line 61
    if-ne v1, v3, :cond_0

    const/4 v4, 0x0

    :cond_0
    return v4

    .line 62
    :cond_1
    const/4 v5, 0x1

    if-ne v1, v3, :cond_2

    .line 63
    return v5

    .line 64
    :cond_2
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "i1":I
    .local v6, "i1":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "c1":I
    const/high16 v7, 0x10000

    const v8, 0xdc00

    const v9, 0xd800

    if-lt v0, v9, :cond_3

    if-ge v0, v8, :cond_3

    if-ge v6, v2, :cond_3

    .line 66
    sub-int v10, v0, v9

    mul-int/lit16 v10, v10, 0x400

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "i1":I
    .local v11, "i1":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v8

    add-int/2addr v10, v6

    add-int v0, v10, v7

    move v6, v0

    move v0, v11

    goto :goto_1

    .line 68
    .end local v11    # "i1":I
    .restart local v6    # "i1":I
    :cond_3
    move v12, v6

    move v6, v0

    move v0, v12

    .local v0, "i1":I
    .local v6, "c1":I
    :goto_1
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "i2":I
    .local v10, "i2":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 69
    .local v1, "c2":I
    if-lt v1, v9, :cond_4

    if-ge v1, v8, :cond_4

    if-ge v10, v3, :cond_4

    .line 70
    sub-int v9, v1, v9

    mul-int/lit16 v9, v9, 0x400

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i2":I
    .local v11, "i2":I
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v8

    add-int/2addr v9, v10

    add-int v1, v9, v7

    move v10, v11

    .line 72
    .end local v11    # "i2":I
    .restart local v10    # "i2":I
    :cond_4
    if-eq v6, v1, :cond_6

    .line 73
    if-ge v6, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :goto_2
    return v4

    .line 74
    .end local v1    # "c2":I
    .end local v6    # "c1":I
    :cond_6
    move v1, v10

    goto :goto_0
.end method

.method public static find(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    invoke-static {p0}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    invoke-direct {v0}, Lgnu/xquery/util/NamedCollator;-><init>()V

    .line 22
    .local v0, "coll":Lgnu/xquery/util/NamedCollator;
    iput-object p0, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    .line 24
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 83
    :cond_0
    invoke-static {p1, p2}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0, p1}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 96
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v0}, Ljava/text/Collator;->hashCode()I

    move-result v0

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
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

    .line 110
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lgnu/xquery/util/NamedCollator;->resolve()V

    .line 112
    return-void
.end method

.method public resolve()V
    .locals 3

    .line 42
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    const-string v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown collation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 105
    return-void
.end method
