.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
.source "HTTPTokener.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->next()C

    move-result v1

    .line 55
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/16 v2, 0x27

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 70
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->next()C

    move-result v1

    goto :goto_0

    .line 71
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 57
    :cond_4
    :goto_2
    move v2, v1

    .line 59
    .local v2, "q":C
    :goto_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->next()C

    move-result v1

    .line 60
    const/16 v3, 0x20

    if-lt v1, v3, :cond_6

    .line 63
    if-ne v1, v2, :cond_5

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 66
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 61
    :cond_6
    const-string v3, "Unterminated string."

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/HTTPTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    goto :goto_5

    :goto_4
    throw v3

    :goto_5
    goto :goto_4
.end method
