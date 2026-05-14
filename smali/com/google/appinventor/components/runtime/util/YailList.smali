.class public Lcom/google/appinventor/components/runtime/util/YailList;
.super Lgnu/lists/Pair;
.source "YailList.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {p0, v0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cdrval"    # Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    invoke-direct {p0, v0, p1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public static YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Ljava/lang/Object;

    .line 132
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 133
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 135
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    return-object v0
.end method

.method public static makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .param p0, "vals"    # Ljava/util/Collection;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v0, "valsList":Ljava/util/List;
    invoke-static {v0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    .line 79
    .local v1, "newCdr":Lgnu/lists/LList;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p0, "vals"    # Ljava/util/List;

    .line 68
    invoke-static {p0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v0

    .line 69
    .local v0, "newCdr":Lgnu/lists/LList;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static makeList(Ljava/util/Set;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .param p0, "vals"    # Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    .local v0, "valsList":Ljava/util/List;
    invoke-static {v0}, Lgnu/lists/Pair;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    .line 90
    .local v1, "newCdr":Lgnu/lists/LList;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p0, "objects"    # [Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/lists/Pair;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 61
    .local v0, "newCdr":Lgnu/lists/LList;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 201
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 194
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 173
    invoke-super {p0}, Lgnu/lists/Pair;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/lists/LList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "YailList cannot be represented as an array"

    const-string v2, "YailList Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 7

    .line 150
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v0, "json":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 152
    .local v1, "separator":Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    .line 154
    .local v2, "size":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-gt v3, v2, :cond_0

    .line 155
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 156
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v5, ","

    move-object v1, v5

    .line 154
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "i":I
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 163
    .end local v0    # "json":Ljava/lang/StringBuilder;
    .end local v1    # "separator":Ljava/lang/String;
    .end local v2    # "size":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "List failed to convert to JSON."

    const-string v3, "JSON Creation Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;->cdr:Ljava/lang/Object;

    check-cast v0, Lgnu/lists/LList;

    invoke-virtual {v0}, Lgnu/lists/LList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "YailList cannot be represented as a String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    .line 116
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 117
    .local v1, "objects":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 118
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
