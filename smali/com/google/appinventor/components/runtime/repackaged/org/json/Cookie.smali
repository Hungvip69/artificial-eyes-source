.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 51
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 52
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 54
    .local v4, "c":C
    const/16 v5, 0x20

    const/16 v6, 0x25

    if-lt v4, v5, :cond_1

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1

    if-eq v4, v6, :cond_1

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 55
    :cond_1
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 56
    ushr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-char v5, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 57
    and-int/lit8 v5, v4, 0xf

    int-to-char v5, v5

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 85
    .local v0, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "x":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next(C)C

    .line 88
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v0, v5, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 89
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    .line 90
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->more()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const-string v4, "=;"

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v5

    if-eq v5, v2, :cond_1

    .line 93
    const-string v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .local v5, "value":Ljava/lang/Object;
    goto :goto_1

    .line 96
    .end local v5    # "value":Ljava/lang/Object;
    :cond_0
    const-string v2, "Missing \'=\' in cookie parameter."

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 99
    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    .line 102
    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_0

    .line 104
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    return-object v0
.end method

.method public static toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "jo"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v1, "value"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "expires"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, ";expires="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_0
    const-string v1, "domain"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, ";domain="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_1
    const-string v1, "path"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const-string v2, ";path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Cookie;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    :cond_2
    const-string v1, "secure"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    const-string v1, ";secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 154
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 155
    .local v3, "c":C
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_0

    .line 156
    const/16 v3, 0x20

    goto :goto_1

    .line 157
    :cond_0
    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x2

    if-ge v4, v0, :cond_1

    .line 158
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->dehexchar(C)I

    move-result v4

    .line 159
    .local v4, "d":I
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->dehexchar(C)I

    move-result v5

    .line 160
    .local v5, "e":I
    if-ltz v4, :cond_1

    if-ltz v5, :cond_1

    .line 161
    mul-int/lit8 v6, v4, 0x10

    add-int/2addr v6, v5

    int-to-char v3, v6

    .line 162
    add-int/lit8 v2, v2, 0x2

    .line 165
    .end local v4    # "d":I
    .end local v5    # "e":I
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
