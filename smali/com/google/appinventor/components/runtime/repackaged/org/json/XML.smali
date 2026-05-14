.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->AMP:Ljava/lang/Character;

    .line 42
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->APOS:Ljava/lang/Character;

    .line 45
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->BANG:Ljava/lang/Character;

    .line 48
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3d

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->EQ:Ljava/lang/Character;

    .line 51
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3e

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    .line 54
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    .line 57
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x3f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUEST:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUOT:Ljava/lang/Character;

    .line 63
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 80
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :sswitch_0
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    goto :goto_1

    .line 85
    :sswitch_1
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    goto :goto_1

    .line 94
    :sswitch_2
    const-string v4, "&apos;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    goto :goto_1

    .line 82
    :sswitch_3
    const-string v4, "&amp;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    goto :goto_1

    .line 91
    :sswitch_4
    const-string v4, "&quot;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    nop

    .line 78
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static noSpace(Ljava/lang/String;)V
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 111
    .local v0, "length":I
    if-eqz v0, :cond_2

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\' contains a space character."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_1
    return-void

    .line 112
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v2, "Empty string."

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;Ljava/lang/String;)Z
    .locals 10
    .param p0, "x"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;
    .param p1, "context"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 149
    .local v0, "jsonobject":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 153
    .local v1, "token":Ljava/lang/Object;
    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->BANG:Ljava/lang/Character;

    const-string v3, "content"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_9

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v2

    .line 155
    .local v2, "c":C
    const/16 v5, 0x2d

    if-ne v2, v5, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v3

    if-ne v3, v5, :cond_0

    .line 157
    const-string v3, "-->"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 158
    return v4

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->back()V

    goto :goto_0

    .line 161
    :cond_1
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_4

    .line 162
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 163
    const-string v6, "CDATA"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v6

    if-ne v6, v5, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "string":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 167
    invoke-virtual {p1, v3, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 169
    :cond_2
    return v4

    .line 172
    .end local v5    # "string":Ljava/lang/String;
    :cond_3
    const-string v3, "Expected \'CDATA[\'"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 174
    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 176
    .local v3, "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_8

    .line 179
    sget-object v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v5, :cond_6

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    :cond_6
    sget-object v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v5, :cond_7

    .line 182
    add-int/lit8 v3, v3, -0x1

    .line 184
    :cond_7
    :goto_1
    if-gtz v3, :cond_5

    .line 185
    return v4

    .line 178
    :cond_8
    const-string v4, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v4

    throw v4

    .line 186
    .end local v2    # "c":C
    .end local v3    # "i":I
    :cond_9
    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUEST:Ljava/lang/Character;

    if-ne v1, v2, :cond_a

    .line 190
    const-string v2, "?>"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    .line 191
    return v4

    .line 192
    :cond_a
    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    const/4 v5, 0x1

    if-ne v1, v2, :cond_e

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 197
    if-eqz p2, :cond_d

    .line 200
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v2, v3, :cond_b

    .line 206
    return v5

    .line 204
    :cond_b
    const-string v2, "Misshaped close tag"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 201
    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Mismatched "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 198
    :cond_d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Mismatched close tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 208
    :cond_e
    instance-of v2, v1, Ljava/lang/Character;

    const-string v6, "Misshaped tag"

    if-nez v2, :cond_1d

    .line 214
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 215
    .local v2, "tagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 216
    new-instance v7, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    move-object v0, v7

    .line 218
    :goto_2
    if-nez v1, :cond_f

    .line 219
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 224
    :cond_f
    instance-of v7, v1, Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_12

    .line 225
    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 226
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 227
    sget-object v9, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->EQ:Ljava/lang/Character;

    if-ne v1, v9, :cond_11

    .line 228
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    .line 229
    instance-of v8, v1, Ljava/lang/String;

    if-eqz v8, :cond_10

    .line 232
    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 234
    const/4 v1, 0x0

    goto :goto_2

    .line 230
    :cond_10
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 236
    :cond_11
    invoke-virtual {v0, v7, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_2

    .line 241
    .end local v7    # "string":Ljava/lang/String;
    :cond_12
    sget-object v7, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v7, :cond_15

    .line 242
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v3, v5, :cond_14

    .line 245
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 246
    invoke-virtual {p1, v2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_3

    .line 248
    :cond_13
    invoke-virtual {p1, v2, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 250
    :goto_3
    return v4

    .line 243
    :cond_14
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 254
    :cond_15
    sget-object v7, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    if-ne v1, v7, :cond_1c

    .line 256
    :cond_16
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    .line 257
    if-nez v1, :cond_18

    .line 258
    if-nez v2, :cond_17

    .line 261
    return v4

    .line 259
    :cond_17
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unclosed tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 262
    :cond_18
    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_19

    .line 263
    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 264
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_16

    .line 265
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_4

    .line 271
    .end local v6    # "string":Ljava/lang/String;
    :cond_19
    sget-object v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    if-ne v1, v6, :cond_16

    .line 272
    invoke-static {p0, v0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 273
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->length()I

    move-result v6

    if-nez v6, :cond_1a

    .line 274
    invoke-virtual {p1, v2, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_5

    .line 275
    :cond_1a
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->length()I

    move-result v6

    if-ne v6, v5, :cond_1b

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 277
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    goto :goto_5

    .line 280
    :cond_1b
    invoke-virtual {p1, v2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 282
    :goto_5
    return v4

    .line 287
    :cond_1c
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 209
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    goto :goto_7

    :goto_6
    throw v2

    :goto_7
    goto :goto_6
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 304
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 307
    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 310
    :cond_1
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 318
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 319
    .local v0, "initial":C
    const/16 v1, 0x2d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-lt v0, v1, :cond_4

    const/16 v1, 0x39

    if-gt v0, v1, :cond_4

    .line 320
    :cond_3
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    .line 322
    return-object v1

    .line 333
    .end local v0    # "initial":C
    .end local v1    # "value":Ljava/lang/Long;
    :cond_4
    goto :goto_0

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ignore":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "value":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_5

    .line 329
    return-object v1

    .line 332
    .end local v1    # "value":Ljava/lang/Double;
    :cond_5
    goto :goto_0

    .line 331
    :catch_1
    move-exception v1

    .line 334
    .end local v0    # "ignore":Ljava/lang/Exception;
    :goto_0
    return-object p0
.end method

.method public static toJSONObject(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 353
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 354
    .local v0, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;-><init>(Ljava/lang/String;)V

    .line 355
    .local v1, "x":Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->skipPast(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->parse(Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;Ljava/lang/String;)Z

    goto :goto_0

    .line 358
    :cond_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 369
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 391
    .local v0, "sb":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    const-string v2, "/>"

    const-string v3, "</"

    if-eqz v1, :cond_c

    .line 395
    const/16 v1, 0x3c

    const/16 v4, 0x3e

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    :cond_0
    move-object v5, p0

    check-cast v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 404
    .local v5, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 405
    .local v6, "keys":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 406
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 408
    .local v8, "value":Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 409
    const-string v8, ""

    .line 411
    :cond_2
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 412
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "string":Ljava/lang/String;
    goto :goto_1

    .line 414
    .end local v9    # "string":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 419
    .restart local v9    # "string":Ljava/lang/String;
    :goto_1
    const-string v10, "content"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 420
    instance-of v10, v8, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v10, :cond_5

    .line 421
    move-object v10, v8

    check-cast v10, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 422
    .local v10, "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v11

    .line 423
    .local v11, "length":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v11, :cond_1

    .line 424
    if-lez v12, :cond_4

    .line 425
    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    :cond_4
    invoke-virtual {v10, v12}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 430
    .end local v10    # "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .end local v11    # "length":I
    .end local v12    # "i":I
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 435
    :cond_6
    instance-of v10, v8, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v10, :cond_8

    .line 436
    move-object v10, v8

    check-cast v10, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 437
    .restart local v10    # "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    invoke-virtual {v10}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v11

    .line 438
    .restart local v11    # "length":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v11, :cond_1

    .line 439
    invoke-virtual {v10, v12}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 440
    instance-of v13, v8, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v13, :cond_7

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    invoke-static {v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 449
    :cond_7
    invoke-static {v8, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 452
    .end local v10    # "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .end local v11    # "length":I
    .end local v12    # "i":I
    :cond_8
    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 460
    :cond_9
    invoke-static {v8, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 463
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "string":Ljava/lang/String;
    :cond_a
    if-eqz p1, :cond_b

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 477
    .end local v5    # "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .end local v6    # "keys":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 478
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v1

    .line 480
    :cond_d
    nop

    instance-of v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v1, :cond_10

    .line 481
    move-object v1, p0

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 482
    .local v1, "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v2

    .line 483
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_f

    .line 484
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_e

    const-string v5, "array"

    goto :goto_6

    :cond_e
    move-object v5, p1

    :goto_6
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 486
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 488
    .end local v1    # "ja":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_10
    if-nez p0, :cond_11

    const-string v1, "null"

    goto :goto_7

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "string":Ljava/lang/String;
    :goto_7
    if-nez p1, :cond_12

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "<"

    if-nez v4, :cond_13

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_8

    :cond_13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_8

    :goto_9
    return-object v2
.end method
