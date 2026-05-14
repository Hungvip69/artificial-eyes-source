.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private final myArrayList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)V
    .locals 3
    .param p1, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    .line 104
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    .line 107
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_2

    .line 108
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 110
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextClean()C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :goto_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextClean()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 127
    const-string v0, "Expected a \',\' or \']\'"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v0

    throw v0

    .line 125
    :sswitch_0
    return-void

    .line 119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextClean()C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 120
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 123
    goto :goto_0

    .line 131
    :cond_2
    return-void

    .line 105
    :cond_3
    const-string v0, "A JSONArray text must start with \'[\'"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 173
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 174
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "length":I
    .end local v1    # "i":I
    :cond_0
    nop

    .line 180
    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v1, "JSONArray initial value should be a string or collection or array."

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .param p1, "collection"    # Ljava/util/Collection;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 196
    return-object v0

    .line 194
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 211
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a boolean."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 215
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1
.end method

.method public getDouble(I)D
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v1

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInt(I)I
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 256
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getJSONArray(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v1, :cond_0

    .line 276
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    return-object v1

    .line 278
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONArray."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz v1, :cond_0

    .line 294
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    return-object v1

    .line 296
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a JSONObject."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(I)J
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "object":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v1

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "JSONArray["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] is not a number."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 331
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 333
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "JSONArray["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] not a string."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 344
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    .line 360
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 363
    if-lez v2, :cond_0

    .line 364
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->valueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public length()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 388
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public optBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .line 418
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public optDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 434
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # D

    .line 450
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getDouble(I)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public optInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public optInt(II)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 482
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Ljava/lang/Exception;
    return p2
.end method

.method public optJSONArray(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 2
    .param p1, "index"    # I

    .line 497
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 498
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public optJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 2
    .param p1, "index"    # I

    .line 511
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public optLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 525
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # J

    .line 541
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Ljava/lang/Exception;
    return-wide p2
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 557
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 571
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 572
    .local v0, "object":Ljava/lang/Object;
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public put(D)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    .line 612
    .local v0, "d":Ljava/lang/Double;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 614
    return-object p0
.end method

.method public put(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # I

    .line 625
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 626
    return-object p0
.end method

.method public put(ID)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 718
    return-object p0
.end method

.method public put(II)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 735
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 736
    return-object p0
.end method

.method public put(IJ)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 754
    return-object p0
.end method

.method public put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 792
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->testValidity(Ljava/lang/Object;)V

    .line 793
    if-ltz p1, :cond_2

    .line 796
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 799
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 800
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto :goto_0

    .line 802
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 804
    :goto_1
    return-object p0

    .line 794
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "JSONArray["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "] not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public put(ILjava/util/Collection;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 699
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 700
    return-object p0
.end method

.method public put(ILjava/util/Map;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 771
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 772
    return-object p0
.end method

.method public put(IZ)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 682
    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 683
    return-object p0
.end method

.method public put(J)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # J

    .line 637
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 638
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    return-object p0
.end method

.method public put(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Collection;

    .line 597
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 598
    return-object p0
.end method

.method public put(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/util/Map;

    .line 650
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 651
    return-object p0
.end method

.method public put(Z)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p1, "value"    # Z

    .line 584
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 585
    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 816
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 817
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 818
    return-object v0
.end method

.method public toJSONObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 4
    .param p1, "names"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 834
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 837
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 838
    .local v0, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 839
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 838
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 835
    .end local v0    # "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 857
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "indentFactor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 876
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 877
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    monitor-enter v1

    .line 878
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 879
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public write(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 892
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->write(Ljava/io/Writer;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "indentFactor"    # I
    .param p3, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 911
    const/4 v0, 0x0

    .line 912
    .local v0, "commanate":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v1

    .line 913
    .local v1, "length":I
    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 915
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2, p2, p3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    goto :goto_1

    .line 918
    :cond_0
    if-eqz v1, :cond_5

    .line 919
    add-int v2, p3, p2

    .line 921
    .local v2, "newindent":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v3, v1, :cond_3

    .line 922
    if-eqz v0, :cond_1

    .line 923
    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 925
    :cond_1
    if-lez p2, :cond_2

    .line 926
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 928
    :cond_2
    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->indent(Ljava/io/Writer;I)V

    .line 929
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->myArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4, p2, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->writeValue(Ljava/io/Writer;Ljava/lang/Object;II)Ljava/io/Writer;

    .line 931
    const/4 v0, 0x1

    .line 921
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 933
    .end local v3    # "i":I
    :cond_3
    if-lez p2, :cond_4

    .line 934
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 936
    :cond_4
    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->indent(Ljava/io/Writer;I)V

    .line 938
    .end local v2    # "newindent":I
    :cond_5
    :goto_1
    const/16 v2, 0x5d

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 939
    return-object p1

    .line 940
    .end local v0    # "commanate":Z
    .end local v1    # "length":I
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
