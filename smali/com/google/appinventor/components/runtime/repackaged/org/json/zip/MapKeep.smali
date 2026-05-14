.class Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
.source "MapKeep.java"


# instance fields
.field private list:[Ljava/lang/Object;

.field private map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "bits"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;-><init>(I)V

    .line 50
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->capacity:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    .line 52
    return-void
.end method

.method private compact()V
    .locals 8

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "from":I
    const/4 v1, 0x0

    .line 62
    .local v1, "to":I
    :goto_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->capacity:I

    if-ge v0, v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 64
    .local v2, "key":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->uses:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->age(J)J

    move-result-wide v3

    .line 65
    .local v3, "usage":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 66
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->uses:[J

    aput-wide v3, v5, v1

    .line 67
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 68
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 71
    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_1
    nop

    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "usage":J
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->capacity:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 76
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    goto :goto_2

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 79
    iput v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    .line 81
    :goto_2
    iput v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->power:I

    .line 82
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 9
    .param p1, "pm"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    .line 99
    .local v0, "that":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    iget v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " <> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 101
    return v3

    .line 103
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    if-ge v1, v2, :cond_5

    .line 105
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "b":Z
    goto :goto_1

    .line 108
    .end local v2    # "b":Z
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 109
    .local v2, "o":Ljava/lang/Object;
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v4, v4, v1

    .line 110
    .local v4, "q":Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_2
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    .line 114
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v2, v5

    .line 118
    .end local v4    # "q":Ljava/lang/Object;
    .local v2, "b":Z
    :goto_1
    if-nez v2, :cond_4

    .line 119
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\n["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->uses:[J

    aget-wide v7, v6, v1

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->uses:[J

    aget-wide v6, v5, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 122
    return v3

    .line 103
    .end local v2    # "b":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method public register(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 140
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->capacity:I

    if-lt v0, v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->compact()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    aput-object p1, v0, v1

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->map:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->uses:[J

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    const-wide/16 v2, 0x1

    aput-wide v2, v0, v1

    .line 149
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->length:I

    .line 150
    return-void
.end method

.method public value(I)Ljava/lang/Object;
    .locals 1
    .param p1, "integer"    # I

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->list:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
