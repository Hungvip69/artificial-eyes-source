.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 7
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 73
    .local v0, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "x":Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "HTTP-Version"

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v0, v5, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 82
    const-string v3, "Status-Code"

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 83
    const-string v3, "Reason-Phrase"

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 84
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->next()C

    goto :goto_0

    .line 90
    :cond_0
    const-string v3, "Method"

    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 91
    const-string v3, "Request-URI"

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 92
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 97
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->more()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->next(C)C

    .line 100
    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->nextTo(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 101
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->next()C

    .line 102
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_0

    .line 103
    :cond_1
    return-object v0
.end method

.method public static toString(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)Ljava/lang/String;
    .locals 10
    .param p0, "jo"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 130
    .local v0, "keys":Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "Status-Code"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "HTTP-Version"

    const-string v5, "Request-URI"

    const-string v6, "Reason-Phrase"

    const-string v7, "Method"

    const/16 v8, 0x20

    if-eqz v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :goto_0
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "string":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 154
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v9, ": "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 160
    .end local v8    # "string":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 146
    :cond_3
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v3, "Not enough material for an HTTP header."

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method
