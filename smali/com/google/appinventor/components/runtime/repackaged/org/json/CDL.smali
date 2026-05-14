.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;
.super Ljava/lang/Object;
.source "CDL.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getValue(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Ljava/lang/String;
    .locals 5
    .param p0, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 60
    nop

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    .line 61
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 62
    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 84
    .local v1, "q":C
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 85
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 81
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 82
    const-string v3, ""

    return-object v3

    .line 67
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_1
    move v1, v0

    .line 68
    .restart local v1    # "q":C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    .line 71
    if-ne v0, v1, :cond_1

    .line 72
    nop

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 74
    :cond_1
    if-eqz v0, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Missing close quote \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 64
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_2
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x22 -> :sswitch_1
        0x27 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static rowToJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 5
    .param p0, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 96
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    .line 98
    .local v0, "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    :goto_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->getValue(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v2

    .line 100
    .local v2, "c":C
    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x2c

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    if-eq v2, v4, :cond_0

    goto :goto_3

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 106
    :goto_1
    if-ne v2, v4, :cond_1

    .line 107
    nop

    .line 118
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "c":C
    goto :goto_0

    .line 109
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v2    # "c":C
    :cond_1
    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    .line 110
    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 113
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Bad character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 111
    :cond_3
    :goto_2
    return-object v0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v2

    goto :goto_1

    .line 102
    :cond_5
    :goto_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public static rowToJSONObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 2
    .param p0, "names"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .param p1, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->rowToJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    .line 134
    .local v0, "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->toJSONObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static rowToString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;
    .locals 9
    .param p0, "ja"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v1, v2, :cond_6

    .line 147
    const/16 v2, 0x2c

    if-lez v1, :cond_0

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    .line 151
    .local v4, "object":Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v6, 0x22

    if-gez v2, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    const/16 v2, 0xd

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_4

    .line 156
    :cond_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 158
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 159
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 160
    .local v7, "c":C
    const/16 v8, 0x20

    if-lt v7, v8, :cond_2

    if-eq v7, v6, :cond_2

    .line 161
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    .end local v7    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v3    # "j":I
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    .end local v2    # "length":I
    goto :goto_2

    .line 166
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "string":Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 3
    .param p0, "names"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .param p1, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    .line 224
    .local v1, "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    :goto_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->rowToJSONObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v2

    .line 225
    .local v2, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    if-nez v2, :cond_2

    .line 226
    nop

    .line 230
    .end local v2    # "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 231
    return-object v0

    .line 233
    :cond_1
    return-object v1

    .line 228
    .restart local v2    # "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    :cond_2
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 229
    .end local v2    # "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    goto :goto_0

    .line 220
    .end local v1    # "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p0, "names"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p0, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 193
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->rowToJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONArray(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .param p0, "ja"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v0

    .line 247
    .local v0, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->names()Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v1

    .line 249
    .local v1, "names":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    if-eqz v1, :cond_0

    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->rowToString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 253
    .end local v1    # "names":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .param p1, "ja"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 267
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 272
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->optJSONObject(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v2

    .line 273
    .local v2, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    if-eqz v2, :cond_1

    .line 274
    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->toJSONArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/CDL;->rowToString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    .end local v2    # "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
