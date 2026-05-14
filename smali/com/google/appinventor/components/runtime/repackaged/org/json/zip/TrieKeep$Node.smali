.class Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
.super Ljava/lang/Object;
.source "TrieKeep.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Node"
.end annotation


# instance fields
.field private integer:I

.field private next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

.field private final synthetic this$0:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->this$0:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    .line 46
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    .line 47
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .param p1, "x1"    # I

    .line 37
    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    return p1
.end method


# virtual methods
.method public get(B)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .locals 1
    .param p1, "cell"    # B

    .line 71
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->get(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .locals 1
    .param p1, "cell"    # I

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    aget-object v0, v0, p1

    :goto_0
    return-object v0
.end method

.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 6
    .param p1, "pm"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 80
    .local v0, "that":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    const-string v2, "\nMisalign"

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 82
    return v1

    .line 84
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    iget v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    if-eq v2, v3, :cond_1

    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\nInteger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " <> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 90
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    if-nez v2, :cond_2

    .line 91
    return v3

    .line 93
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\nNext is null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->integer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 94
    return v1

    .line 96
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_6

    .line 97
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    aget-object v4, v4, v2

    .line 98
    .local v4, "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    if-eqz v4, :cond_4

    .line 99
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 100
    return v1

    .line 102
    :cond_4
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    aget-object v5, v5, v2

    if-eqz v5, :cond_5

    .line 103
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\nMisalign "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 104
    return v1

    .line 96
    .end local v4    # "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_6
    return v3
.end method

.method public set(BLcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)V
    .locals 1
    .param p1, "cell"    # B
    .param p2, "node"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 139
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->set(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)V

    .line 140
    return-void
.end method

.method public set(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)V
    .locals 1
    .param p1, "cell"    # I
    .param p2, "node"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    if-nez v0, :cond_0

    .line 120
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->next:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    aput-object p2, v0, p1

    .line 128
    return-void
.end method

.method public vet(B)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .locals 1
    .param p1, "cell"    # B

    .line 168
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    return-object v0
.end method

.method public vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .locals 3
    .param p1, "cell"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->get(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    .line 152
    .local v0, "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    if-nez v0, :cond_0

    .line 153
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->this$0:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    move-object v0, v1

    .line 154
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->set(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)V

    .line 156
    :cond_0
    return-object v0
.end method
