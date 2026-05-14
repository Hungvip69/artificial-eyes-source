.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private character:J

.field private eof:Z

.field private index:J

.field private line:J

.field private previous:C

.field private reader:Ljava/io/Reader;

.field private usePrevious:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->reader:Ljava/io/Reader;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->eof:Z

    .line 62
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->usePrevious:Z

    .line 63
    iput-char v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->previous:C

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    .line 65
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    .line 66
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;-><init>(Ljava/io/Reader;)V

    .line 85
    return-void
.end method

.method public static dehexchar(C)I
    .locals 1
    .param p0, "c"    # C

    .line 111
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 112
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 114
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 115
    add-int/lit8 v0, p0, -0x37

    return v0

    .line 117
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 118
    add-int/lit8 v0, p0, -0x57

    return v0

    .line 120
    :cond_2
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public back()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 97
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    .line 98
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->usePrevious:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->eof:Z

    .line 101
    return-void

    .line 95
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->eof:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->usePrevious:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public more()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    .line 135
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->end()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public next()C
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 150
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->usePrevious:Z

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->usePrevious:Z

    .line 152
    iget-char v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->previous:C

    .local v0, "c":I
    goto :goto_0

    .line 155
    .end local v0    # "c":I
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .restart local v0    # "c":I
    nop

    .line 160
    if-gtz v0, :cond_1

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->eof:Z

    .line 162
    const/4 v0, 0x0

    .line 165
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    .line 166
    iget-char v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->previous:C

    const/16 v2, 0xd

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    if-ne v1, v2, :cond_3

    .line 167
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    .line 168
    if-ne v0, v7, :cond_2

    move-wide v3, v5

    :cond_2
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    goto :goto_1

    .line 169
    :cond_3
    if-ne v0, v7, :cond_4

    .line 170
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    .line 171
    iput-wide v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    goto :goto_1

    .line 173
    :cond_4
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    .line 175
    :goto_1
    int-to-char v1, v0

    iput-char v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->previous:C

    .line 176
    iget-char v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->previous:C

    return v1

    .line 156
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    .line 157
    .restart local v0    # "c":I
    .local v1, "exception":Ljava/io/IOException;
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public next(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    .line 189
    .local v0, "n":C
    if-ne v0, p1, :cond_0

    .line 193
    return v0

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string v0, ""

    return-object v0

    .line 211
    :cond_0
    new-array v0, p1, [C

    .line 212
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 214
    .local v1, "pos":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v2

    aput-char v2, v0, v1

    .line 216
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->end()Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 221
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public nextClean()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 232
    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    .line 233
    .local v0, "c":C
    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 236
    .end local v0    # "c":C
    :cond_0
    goto :goto_0

    .line 234
    .restart local v0    # "c":C
    :cond_1
    :goto_1
    return v0
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v1

    .line 256
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 293
    if-ne v1, p1, :cond_0

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 262
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v1

    .line 263
    sparse-switch v1, :sswitch_data_1

    .line 289
    const-string v2, "Illegal escape."

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 280
    :sswitch_1
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 281
    goto :goto_0

    .line 268
    :sswitch_2
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    goto :goto_0

    .line 277
    :sswitch_3
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 278
    goto :goto_0

    .line 271
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    goto :goto_0

    .line 274
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    goto :goto_0

    .line 265
    :sswitch_6
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    goto :goto_0

    .line 286
    :sswitch_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 287
    goto :goto_0

    .line 260
    :sswitch_8
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v2

    throw v2

    .line 296
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0xa -> :sswitch_8
        0xd -> :sswitch_8
        0x5c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_7
        0x2f -> :sswitch_7
        0x5c -> :sswitch_7
        0x62 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .param p1, "delimiter"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v1

    .line 312
    .local v1, "c":C
    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    .end local v1    # "c":C
    goto :goto_0

    .line 313
    .restart local v1    # "c":C
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 316
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "delimiters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v1

    .line 334
    .local v1, "c":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 336
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 339
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextClean()C

    move-result v0

    .line 357
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 378
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 362
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 363
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)V

    return-object v1

    .line 365
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 366
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;)V

    return-object v1

    .line 360
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 379
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "string":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 389
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 387
    :cond_1
    const-string v3, "Missing value"

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    move-result-object v3

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public skipTo(C)C
    .locals 9
    .param p1, "to"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 403
    const/4 v0, 0x0

    :try_start_0
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    .line 404
    .local v1, "startIndex":J
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    .line 405
    .local v3, "startCharacter":J
    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    .line 406
    .local v5, "startLine":J
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->reader:Ljava/io/Reader;

    const v8, 0xf4240

    invoke-virtual {v7, v8}, Ljava/io/Reader;->mark(I)V

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->next()C

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .local v0, "c":C
    if-nez v0, :cond_1

    .line 410
    :try_start_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->reader:Ljava/io/Reader;

    invoke-virtual {v7}, Ljava/io/Reader;->reset()V

    .line 411
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    .line 412
    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    .line 413
    iput-wide v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    return v0

    .line 417
    .end local v1    # "startIndex":J
    .end local v3    # "startCharacter":J
    .end local v5    # "startLine":J
    :catch_0
    move-exception v1

    goto :goto_0

    .line 416
    .restart local v1    # "startIndex":J
    .restart local v3    # "startCharacter":J
    .restart local v5    # "startLine":J
    :cond_1
    if-ne v0, p1, :cond_0

    .line 419
    .end local v1    # "startIndex":J
    .end local v3    # "startCharacter":J
    .end local v5    # "startLine":J
    nop

    .line 421
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->back()V

    .line 422
    return v0

    .line 417
    .end local v0    # "c":C
    :catch_1
    move-exception v1

    .line 418
    .restart local v0    # "c":C
    .local v1, "exc":Ljava/io/IOException;
    :goto_0
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public syntaxError(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 433
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 443
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->index:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " [character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->character:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONTokener;->line:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
