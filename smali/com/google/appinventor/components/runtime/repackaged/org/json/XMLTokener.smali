.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "amp"

    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "apos"

    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "gt"

    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "lt"

    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "quot"

    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v1

    .line 69
    .local v1, "c":C
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->end()Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    .line 74
    .local v2, "i":I
    if-ltz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 70
    .end local v2    # "i":I
    :cond_1
    const-string v2, "Unclosed CDATA"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    goto :goto_1

    :goto_0
    throw v2

    :goto_1
    goto :goto_0
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 96
    nop

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 97
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    if-nez v0, :cond_1

    .line 99
    const/4 v1, 0x0

    return-object v1

    .line 101
    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 102
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    return-object v1

    .line 104
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_0
    if-eq v0, v1, :cond_5

    if-nez v0, :cond_3

    goto :goto_2

    .line 110
    :cond_3
    const/16 v3, 0x26

    if-ne v0, v3, :cond_4

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    goto :goto_0

    .line 107
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->back()V

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 5
    .param p1, "ampersand"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v1

    .line 131
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 133
    :cond_0
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    .line 134
    nop

    .line 139
    .end local v1    # "c":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "string":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "object":Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 136
    .end local v2    # "object":Ljava/lang/Object;
    .local v1, "c":C
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing \';\' in XML entity: &"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 132
    :cond_3
    :goto_2
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    .end local v1    # "c":C
    goto :goto_0
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 158
    nop

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 159
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    .local v1, "q":C
    goto :goto_0

    .line 174
    .end local v1    # "q":C
    :sswitch_0
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUEST:Ljava/lang/Character;

    return-object v1

    .line 166
    :sswitch_1
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    return-object v1

    .line 170
    :sswitch_2
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->EQ:Ljava/lang/Character;

    return-object v1

    .line 164
    :sswitch_3
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->LT:Ljava/lang/Character;

    return-object v1

    .line 168
    :sswitch_4
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    return-object v1

    .line 177
    :sswitch_5
    move v1, v0

    .line 179
    .restart local v1    # "q":C
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 180
    if-eqz v0, :cond_2

    .line 183
    if-ne v0, v1, :cond_1

    .line 184
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 181
    :cond_2
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 172
    .end local v1    # "q":C
    :sswitch_6
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->BANG:Ljava/lang/Character;

    return-object v1

    .line 162
    :sswitch_7
    const-string v1, "Misshaped meta tag"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v1

    throw v1

    .line 189
    .restart local v1    # "q":C
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 193
    :cond_3
    sparse-switch v0, :sswitch_data_1

    .line 204
    goto :goto_0

    .line 203
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->back()V

    .line 204
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_8
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_8
        0x3c -> :sswitch_8
        0x3d -> :sswitch_8
        0x3e -> :sswitch_8
        0x3f -> :sswitch_8
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 224
    nop

    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 225
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    .local v1, "q":C
    const/4 v2, 0x0

    .line 266
    .local v2, "sb":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    goto :goto_1

    .line 240
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_0
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->QUEST:Ljava/lang/Character;

    return-object v1

    .line 232
    :sswitch_1
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->GT:Ljava/lang/Character;

    return-object v1

    .line 236
    :sswitch_2
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->EQ:Ljava/lang/Character;

    return-object v1

    .line 230
    :sswitch_3
    const-string v1, "Misplaced \'<\'"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v1

    throw v1

    .line 234
    :sswitch_4
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->SLASH:Ljava/lang/Character;

    return-object v1

    .line 246
    :sswitch_5
    move v1, v0

    .line 247
    .restart local v1    # "q":C
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 250
    if-eqz v0, :cond_3

    .line 253
    if-ne v0, v1, :cond_1

    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 256
    :cond_1
    const/16 v3, 0x26

    if-ne v0, v3, :cond_2

    .line 257
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 251
    :cond_3
    const-string v3, "Unterminated string"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 238
    .end local v1    # "q":C
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :sswitch_6
    sget-object v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/XML;->BANG:Ljava/lang/Character;

    return-object v1

    .line 228
    :sswitch_7
    const-string v1, "Misshaped element"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v1

    throw v1

    .line 268
    .restart local v1    # "q":C
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v0

    .line 270
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 273
    :cond_4
    sparse-switch v0, :sswitch_data_1

    .line 288
    goto :goto_1

    :sswitch_8
    const-string v3, "Bad character in a name"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    throw v3

    .line 283
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->back()V

    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 275
    :sswitch_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_6
        0x22 -> :sswitch_5
        0x27 -> :sswitch_5
        0x2f -> :sswitch_4
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x21 -> :sswitch_9
        0x22 -> :sswitch_8
        0x27 -> :sswitch_8
        0x2f -> :sswitch_9
        0x3c -> :sswitch_8
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 9
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 308
    .local v1, "length":I
    new-array v2, v1, [C

    .line 315
    .local v2, "circle":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v5

    .line 317
    .local v5, "c":C
    if-nez v5, :cond_0

    .line 318
    return v4

    .line 320
    :cond_0
    aput-char v5, v2, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v5    # "c":C
    :cond_1
    :goto_1
    move v5, v0

    .line 327
    .local v5, "j":I
    const/4 v6, 0x1

    .line 331
    .local v6, "b":Z
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_4

    .line 332
    aget-char v7, v2, v5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 333
    const/4 v6, 0x0

    .line 334
    goto :goto_3

    .line 336
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 337
    if-lt v5, v1, :cond_3

    .line 338
    sub-int/2addr v5, v1

    .line 331
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 344
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 345
    const/4 v4, 0x1

    return v4

    .line 350
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/XMLTokener;->next()C

    move-result v7

    .line 351
    .local v7, "c":C
    if-nez v7, :cond_6

    .line 352
    return v4

    .line 358
    :cond_6
    aput-char v7, v2, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 360
    if-lt v0, v1, :cond_1

    .line 361
    sub-int/2addr v0, v1

    goto :goto_1
.end method
