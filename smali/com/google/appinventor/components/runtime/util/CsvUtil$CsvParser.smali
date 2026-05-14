.class Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
.super Ljava/lang/Object;
.source "CsvUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CsvParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

.field private final buf:[C

.field private cellLength:I

.field private delimitedCellLength:I

.field private final in:Ljava/io/Reader;

.field private lastException:Ljava/lang/Exception;

.field private limit:I

.field private opened:Z

.field private pos:I

.field private previouslyRead:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "\"\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    .line 104
    const/16 v0, 0x2800

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 138
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    .line 150
    return-void
.end method

.method private checkedIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .line 310
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private compact(I)I
    .locals 7
    .param p1, "i"    # I

    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 224
    .local v0, "oldPos":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 225
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v2, v0

    .line 226
    .local v2, "toMove":I
    if-lez v2, :cond_0

    .line 227
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    .line 230
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    .line 231
    sub-int v1, p1, v0

    return v1
.end method

.method private fill()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v0, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    sub-int/2addr v0, v1

    .line 239
    .local v0, "toFill":I
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 241
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 242
    .local v2, "n":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 243
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    goto :goto_1

    .line 245
    :cond_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    sub-int/2addr v0, v2

    goto :goto_1

    .line 248
    .end local v2    # "n":I
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/IOException;
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 250
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->opened:Z

    .line 251
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 253
    :cond_1
    return-void
.end method

.method private findDelimOrEnd(I)Z
    .locals 4
    .param p1, "i"    # I

    .line 278
    nop

    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    move p1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 301
    return v1

    .line 279
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 295
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 297
    const/4 v0, 0x0

    return v0

    .line 287
    :sswitch_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .line 288
    .local v0, "j":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 289
    return v1

    .line 292
    .end local v0    # "j":I
    :sswitch_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 293
    return v1

    .line 283
    :sswitch_2
    nop

    .line 278
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x20 -> :sswitch_2
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private findUnescapedEndQuote(I)Z
    .locals 2
    .param p1, "i"    # I

    .line 260
    nop

    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    move p1, v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Syntax Error. unclosed quoted cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 270
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    .line 262
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result p1

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    if-eq v0, v1, :cond_3

    .line 264
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 265
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findDelimOrEnd(I)Z

    move-result v0

    return v0

    .line 260
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private findUnquotedCellEnd(I)Z
    .locals 4
    .param p1, "i"    # I

    .line 314
    nop

    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    move p1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 334
    return v1

    .line 315
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v0, v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 314
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 329
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Syntax Error: quote in unquoted cell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    .line 330
    const/4 v0, 0x0

    return v0

    .line 324
    :sswitch_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 325
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v0

    .line 326
    .local v0, "j":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->checkedIndex(I)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 327
    return v1

    .line 318
    .end local v0    # "j":I
    :sswitch_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    .line 319
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 320
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x22 -> :sswitch_0
        0x2c -> :sswitch_2
    .end sparse-switch
.end method

.method private indexAfterCompactionAndFilling(I)I
    .locals 1
    .param p1, "i"    # I

    .line 211
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    if-lez v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->compact(I)I

    move-result p1

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    .line 215
    return p1
.end method

.method private lookingAtCell()Z
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnescapedEndQuote(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->findUnquotedCellEnd(I)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCharPosition()J
    .locals 4

    .line 203
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->fill()V

    .line 167
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 180
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    invoke-direct {v1, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v1, v2, v4, v5}, Ljava/lang/String;-><init>([CII)V

    .line 183
    .local v1, "cell":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->ESCAPED_QUOTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v1    # "cell":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    const/16 v2, 0x2c

    const/4 v4, 0x0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aget-char v1, v1, v5

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 186
    .local v1, "trailingComma":Z
    :goto_1
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    .line 187
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->cellLength:I

    iput v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->delimitedCellLength:I

    .line 188
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    .line 189
    .local v5, "oldLimit":I
    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-lt v6, v7, :cond_4

    iget v6, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->pos:I

    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->indexAfterCompactionAndFilling(I)I

    move-result v6

    iget v7, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->limit:I

    if-ge v6, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 195
    .local v3, "haveMoreData":Z
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    add-int/lit8 v6, v5, -0x1

    aget-char v4, v4, v6

    if-ne v4, v2, :cond_5

    .line 196
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v5    # "oldLimit":I
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lookingAtCell()Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    :cond_6
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skip(J)V
    .locals 5
    .param p1, "charPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->in:Ljava/io/Reader;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    long-to-int v2, p1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->buf:[C

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 155
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 156
    goto :goto_1

    .line 158
    :cond_0
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->previouslyRead:J

    .line 159
    int-to-long v1, v0

    sub-long/2addr p1, v1

    .line 160
    .end local v0    # "n":I
    goto :goto_0

    .line 161
    :cond_1
    :goto_1
    return-void
.end method

.method public throwAnyProblem()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->lastException:Ljava/lang/Exception;

    throw v0
.end method
