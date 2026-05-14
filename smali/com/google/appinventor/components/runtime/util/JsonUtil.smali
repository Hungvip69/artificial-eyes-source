.class public Lcom/google/appinventor/components/runtime/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final BINFILE_DIR:Ljava/lang/String; = "/AppInventorBinaries"

.field private static final LOG_TAG:Ljava/lang/String; = "JsonUtil"

.field private static final TYPE_FIELD:Ljava/lang/String; = "\u0002$type$\u0003"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 212
    if-nez p0, :cond_0

    .line 213
    const-string v0, "null"

    return-object v0

    .line 216
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 217
    if-eqz p1, :cond_1

    .line 218
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    return-object v0

    .line 220
    :cond_1
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 224
    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    .line 225
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_3

    .line 227
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1

    .line 229
    :cond_3
    return-object v0

    .line 233
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 234
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 238
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 242
    :cond_6
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 243
    return-object p0

    .line 246
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 239
    :cond_8
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 235
    :cond_9
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static encodeJsonObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 623
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonObject is not a legal JSON object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getColumnsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 12
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 470
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 475
    .local v0, "jsonObject":Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v1, "resultColumns":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 482
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 484
    .local v2, "jsonList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 485
    .local v4, "entry":Ljava/lang/Object;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v5, "columnElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v6, v4, Ljava/util/List;

    if-eqz v6, :cond_2

    .line 490
    move-object v6, v4

    check-cast v6, Ljava/util/List;

    .line 495
    .local v6, "listEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 501
    .local v7, "jsonValue":Ljava/lang/Object;
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_1

    .line 504
    move-object v8, v7

    check-cast v8, Ljava/util/List;

    .line 506
    .local v8, "jsonValueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 507
    .local v10, "jsonValueListEntry":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v10    # "jsonValueListEntry":Ljava/lang/Object;
    goto :goto_1

    .line 509
    .end local v8    # "jsonValueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    goto :goto_2

    .line 511
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .end local v6    # "listEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v7    # "jsonValue":Ljava/lang/Object;
    :cond_2
    :goto_2
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    .end local v4    # "entry":Ljava/lang/Object;
    .end local v5    # "columnElements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 522
    .end local v2    # "jsonList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 152
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 153
    .local v1, "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 154
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_1

    .line 163
    :cond_1
    return-object v0
.end method

.method public static getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 250
    if-eqz p0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 253
    :cond_0
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    if-eqz v0, :cond_2

    .line 257
    const-string v0, "\\"

    const-string v1, "\\\\"

    const-string v2, "\u0002$type$\u0003"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 258
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->toJSONString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":\"YailMatrix\",\"data\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    return-object v0

    .line 260
    :cond_2
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v0, :cond_3

    .line 261
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    :cond_3
    instance-of v0, p0, Lgnu/math/IntFraction;

    if-eqz v0, :cond_4

    .line 271
    move-object v0, p0

    check-cast v0, Lgnu/math/IntFraction;

    invoke-virtual {v0}, Lgnu/math/IntFraction;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 273
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 274
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 276
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_6
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_7

    .line 280
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 282
    :cond_7
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v0, :cond_9

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 285
    .local v1, "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v2, ""

    .line 286
    .local v2, "sep":Ljava/lang/String;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 288
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v2, ","

    .line 293
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto :goto_0

    .line 294
    :cond_8
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 297
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v2    # "sep":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ""

    .line 301
    .local v1, "separator":Ljava/lang/String;
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    .line 302
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ","

    .line 301
    .end local v5    # "o":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    :cond_a
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 308
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "separator":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 251
    :cond_c
    :goto_2
    const-string v0, "null"

    return-object v0
.end method

.method public static getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "value"    # Ljava/lang/Object;

    .line 430
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 431
    new-instance v1, Lorg/json/JSONArray;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, "valueJsonList":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    .line 433
    .local v1, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 434
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 439
    .restart local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 440
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v4, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->writeFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "filename":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filename Written: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    const-string v3, "file:/"

    const-string v4, "file:///"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 444
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 446
    .end local v2    # "filename":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 449
    :cond_2
    return-object v0

    .line 436
    .end local v1    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "getJsonRepresentationIfValueFileName called on unknown type"

    .line 437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "value":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "JsonUtil"

    const-string v3, "JSONException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    return-object v0
.end method

.method public static getJsonRepresentationIfValueFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    const-string v1, "JsonUtil"

    const-string v2, "Calling deprecated function getJsonRepresentationIfValueFileName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 96
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "keysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v5, "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_1

    .line 132
    :cond_1
    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 340
    const-string v0, ""

    if-eqz p0, :cond_b

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 347
    :cond_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_a

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 351
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 355
    :cond_2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    .line 356
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 357
    :cond_3
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    .line 358
    const-string v1, "Got JSONObject"

    const-string v2, "JsonUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 360
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    const-string v3, "\u0002$type$\u0003"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 364
    const-string v1, "Got possible matrix"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "type":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v3, "YailMatrix"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 368
    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 369
    .local v3, "data":Lorg/json/JSONArray;
    if-eqz v3, :cond_5

    .line 370
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->fromJsonArray(Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailMatrix;

    move-result-object v2

    return-object v2

    .line 372
    :cond_5
    const-string v4, "YailMatrix missing data field"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "data":Lorg/json/JSONArray;
    :cond_6
    if-eqz p1, :cond_7

    .line 376
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v1

    return-object v1

    .line 378
    :cond_7
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 381
    :cond_8
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid JSON string."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_9
    :goto_1
    return-object v0

    .line 350
    :cond_a
    :goto_2
    const/4 v1, 0x0

    return-object v1

    .line 345
    .end local v0    # "value":Ljava/lang/Object;
    :cond_b
    :goto_3
    return-object v0
.end method

.method public static getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "jArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v2    # "val":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static trimDirectory(ILjava/io/File;)V
    .locals 4
    .param p0, "maxSavedFiles"    # I
    .param p1, "directory"    # Ljava/io/File;

    .line 600
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 602
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/JsonUtil$2;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil$2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 608
    array-length v1, v0

    sub-int/2addr v1, p0

    .line 609
    .local v1, "excess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 610
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 609
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static writeFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "fileExtension"    # Ljava/lang/String;

    .line 538
    move-object/from16 v11, p0

    const-string v0, "/AppInventorBinaries"

    invoke-virtual {v11, v0}, Lcom/google/appinventor/components/runtime/Form;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 539
    .local v12, "fullDirName":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v11, v0}, Lcom/google/appinventor/components/runtime/Form;->getDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 552
    .local v13, "preAmble":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v14, v1

    .line 553
    .local v14, "destDirectory":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v15, "Write"

    if-nez v1, :cond_1

    .line 554
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    :goto_0
    new-instance v10, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 561
    .local v10, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    :try_start_0
    const-string v1, "BinFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, p2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    move-object/from16 v16, v1

    .line 562
    .local v16, "dest":Ljava/io/File;
    new-instance v17, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;

    const-string v4, "Write"

    .line 563
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 576
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;->run()V

    .line 577
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 578
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 580
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "JsonUtil"

    const-string v2, "Error writing content"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    .line 583
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_2

    .line 584
    move-object v1, v0

    check-cast v1, Ljava/io/IOException;

    .end local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .end local v12    # "fullDirName":Ljava/lang/String;
    .end local v13    # "preAmble":Ljava/lang/String;
    .end local v14    # "destDirectory":Ljava/io/File;
    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "input":Ljava/lang/String;
    .end local p2    # "fileExtension":Ljava/lang/String;
    throw v1

    .line 586
    .restart local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .restart local v12    # "fullDirName":Ljava/lang/String;
    .restart local v13    # "preAmble":Ljava/lang/String;
    .restart local v14    # "destDirectory":Ljava/io/File;
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "input":Ljava/lang/String;
    .restart local p2    # "fileExtension":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .end local v12    # "fullDirName":Ljava/lang/String;
    .end local v13    # "preAmble":Ljava/lang/String;
    .end local v14    # "destDirectory":Ljava/io/File;
    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "input":Ljava/lang/String;
    .end local p2    # "fileExtension":Ljava/lang/String;
    throw v1

    .line 582
    .restart local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .restart local v12    # "fullDirName":Ljava/lang/String;
    .restart local v13    # "preAmble":Ljava/lang/String;
    .restart local v14    # "destDirectory":Ljava/io/File;
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "input":Ljava/lang/String;
    .restart local p2    # "fileExtension":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    .end local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .end local v12    # "fullDirName":Ljava/lang/String;
    .end local v13    # "preAmble":Ljava/lang/String;
    .end local v14    # "destDirectory":Ljava/io/File;
    .end local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .end local p1    # "input":Ljava/lang/String;
    .end local p2    # "fileExtension":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v10    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    .restart local v12    # "fullDirName":Ljava/lang/String;
    .restart local v13    # "preAmble":Ljava/lang/String;
    .restart local v14    # "destDirectory":Ljava/io/File;
    .restart local p0    # "context":Lcom/google/appinventor/components/runtime/Form;
    .restart local p1    # "input":Ljava/lang/String;
    .restart local p2    # "fileExtension":Ljava/lang/String;
    :cond_4
    nop

    .line 592
    const/16 v0, 0x14

    invoke-static {v0, v14}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->trimDirectory(ILjava/io/File;)V

    .line 593
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 589
    .end local v16    # "dest":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destDirectory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
