.class public Lgnu/xquery/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static ERROR_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "<error>"

    sput-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p0, "code"    # Ljava/lang/Object;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 339
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/IntNum;

    .line 340
    .local v0, "I":Lgnu/math/IntNum;
    invoke-virtual {v0}, Lgnu/math/IntNum;->intValue()I

    move-result v1

    .line 341
    .local v1, "i":I
    if-lez v1, :cond_3

    const v2, 0xd7ff

    const/high16 v3, 0x10000

    if-le v1, v2, :cond_1

    const v2, 0xe000

    if-lt v1, v2, :cond_3

    const v2, 0xfffd

    if-le v1, v2, :cond_0

    if-lt v1, v3, :cond_3

    :cond_0
    const v2, 0x10ffff

    if-gt v1, v2, :cond_3

    .line 345
    :cond_1
    if-lt v1, v3, :cond_2

    .line 347
    sub-int v2, v1, v3

    shr-int/lit8 v2, v2, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 348
    and-int/lit16 v2, v1, 0x3ff

    const v3, 0xdc00

    add-int v1, v2, v3

    .line 350
    :cond_2
    int-to-char v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    return-void

    .line 344
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codepoints-to-string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid XML character [FOCH0001]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static asDouble(Ljava/lang/Object;)D
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 58
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static codepointEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 577
    const-string v0, "codepoint-equal"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "str1":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "str2":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    .line 580
    :cond_2
    :goto_1
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v2
.end method

.method public static codepointsToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;

    .line 355
    if-nez p0, :cond_0

    .line 356
    const-string v0, ""

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_2

    .line 360
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 361
    .local v1, "vals":Lgnu/mapping/Values;
    invoke-virtual {v1}, Lgnu/mapping/Values;->startPos()I

    move-result v2

    .line 362
    .local v2, "ipos":I
    :goto_0
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    move v2, v3

    if-eqz v3, :cond_1

    .line 363
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 364
    .end local v1    # "vals":Lgnu/mapping/Values;
    .end local v2    # "ipos":I
    :cond_1
    goto :goto_1

    .line 366
    :cond_2
    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 367
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "iarg"    # I
    .param p3, "onEmpty"    # Ljava/lang/String;

    .line 27
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    sget-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-eq p3, v0, :cond_2

    .line 30
    return-object p3

    .line 31
    :cond_2
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/net/URI;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 42
    :cond_3
    new-instance v0, Lgnu/mapping/WrongType;

    sget-object v1, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-ne p3, v1, :cond_4

    const-string v1, "xs:string"

    goto :goto_0

    :cond_4
    const-string v1, "xs:string?"

    :goto_0
    invoke-direct {v0, p1, p2, p0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 2
    .param p0, "val1"    # Ljava/lang/Object;
    .param p1, "val2"    # Ljava/lang/Object;
    .param p2, "coll"    # Lgnu/xquery/util/NamedCollator;

    .line 314
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_4

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    if-nez p2, :cond_1

    .line 318
    sget-object p2, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 319
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 320
    .local v0, "ret":I
    if-gez v0, :cond_2

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    :goto_0
    return-object v1

    .line 316
    .end local v0    # "ret":I
    :cond_4
    :goto_1
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public static concat$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 292
    const/4 v0, 0x1

    const-string v1, "concat"

    invoke-static {p0, v1, v0}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    .line 293
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "str1":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "str2":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    array-length v4, p2

    .line 303
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 305
    aget-object v6, p2, v5

    add-int/lit8 v7, v5, 0x2

    invoke-static {v6, v1, v7}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    .line 306
    .local v6, "arg":Ljava/lang/Object;
    invoke-static {v6}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .end local v6    # "arg":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 308
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "contain"    # Ljava/lang/Object;

    .line 246
    const-string v0, "contains"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "c":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v2
.end method

.method public static encodeForUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 372
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "encode-for-uri"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x55

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "with"    # Ljava/lang/Object;

    .line 262
    const-string v0, "ends-with"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "w":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2
.end method

.method public static escapeHtmlUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 384
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "escape-html-uri"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x48

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static iriToUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "iri-to-uru"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0x49

    invoke-static {v0, v1}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lowerCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "lower-case"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 11

    .line 423
    nop

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x5c

    if-ltz v0, :cond_5

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 427
    sparse-switch v4, :sswitch_data_0

    .line 461
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown \'replace\' flag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 438
    nop

    .line 439
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    .line 441
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 442
    if-ne v6, v3, :cond_0

    if-ge v8, v5, :cond_0

    .line 444
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 445
    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v10, v8

    move v8, v6

    move v6, v10

    goto :goto_2

    .line 447
    :cond_0
    const/16 v9, 0x5b

    if-ne v6, v9, :cond_1

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 449
    :cond_1
    const/16 v9, 0x5d

    if-ne v6, v9, :cond_2

    .line 450
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 451
    :cond_2
    if-nez v7, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 452
    move v6, v8

    goto :goto_1

    .line 453
    :cond_3
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    move v6, v8

    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    goto :goto_3

    .line 433
    :sswitch_1
    or-int/lit8 v2, v2, 0x20

    .line 434
    goto :goto_3

    .line 458
    :sswitch_2
    or-int/lit8 v2, v2, 0x8

    .line 459
    goto :goto_3

    .line 430
    :sswitch_3
    or-int/lit8 v2, v2, 0x42

    .line 431
    nop

    .line 463
    :goto_3
    goto :goto_0

    .line 465
    :cond_5
    const-string p1, "{Is"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_a

    .line 467
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 469
    nop

    :goto_4
    if-ge v1, v0, :cond_9

    .line 471
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 472
    if-ne v1, v3, :cond_7

    add-int/lit8 v5, v4, 0x4

    if-ge v5, v0, :cond_7

    .line 474
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 475
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 476
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    const/16 v5, 0x70

    if-eq v4, v5, :cond_6

    const/16 v5, 0x50

    if-ne v4, v5, :cond_8

    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x49

    if-ne v4, v6, :cond_8

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x73

    if-ne v4, v7, :cond_8

    .line 482
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    const/16 v4, 0x6e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 485
    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    .line 489
    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v4

    .line 490
    :cond_8
    :goto_5
    goto :goto_4

    .line 491
    :cond_9
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    :cond_a
    invoke-static {p0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 499
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/StringUtils;->matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "matches"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "str":Ljava/lang/String;
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    return v1
.end method

.method public static normalizeSpace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "arg"    # Ljava/lang/Object;

    .line 390
    const-string v0, "normalize-space"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 392
    .local v3, "len":I
    const/4 v4, 0x0

    .line 393
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 394
    .local v5, "skipped":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_7

    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 397
    .local v7, "ch":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 399
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-lez v6, :cond_0

    .line 400
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 401
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 405
    :cond_1
    if-lez v5, :cond_5

    .line 407
    const/16 v8, 0x20

    if-eqz v4, :cond_2

    .line 408
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 409
    :cond_2
    if-gt v5, v1, :cond_3

    if-eq v6, v1, :cond_3

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_4

    .line 410
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v8

    .line 411
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 413
    :cond_5
    if-eqz v4, :cond_6

    .line 414
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 394
    .end local v7    # "ch":C
    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 417
    .end local v6    # "i":I
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    if-lez v5, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, v0

    :goto_3
    return-object v2
.end method

.method public static normalizeUnicode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 586
    const-string v0, "NFC"

    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "form"    # Ljava/lang/String;

    .line 591
    const-string v0, "normalize-unicode"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    return-object v0

    .line 620
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "normalize-unicode: unicode string normalization not available"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 515
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lgnu/xquery/util/StringUtils;->replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "flags"    # Ljava/lang/String;

    .line 522
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "replace"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 524
    .local v1, "rlen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 526
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 527
    .local v2, "rch":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_3

    .line 529
    if-ge v3, v2, :cond_2

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v2, v3

    if-eq v3, v4, :cond_1

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_2

    .line 533
    .end local v2    # "rch":C
    :cond_1
    :goto_1
    move v2, v5

    goto :goto_3

    .line 531
    .end local v5    # "i":I
    .restart local v2    # "rch":C
    .restart local v3    # "i":I
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid replacement string [FORX0004]"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 527
    :cond_3
    move v2, v3

    .line 533
    .end local v3    # "i":I
    .local v2, "i":I
    :goto_3
    goto :goto_0

    .line 534
    .end local v2    # "i":I
    :cond_4
    invoke-static {p1, p3}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static startsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "with"    # Ljava/lang/Object;

    .line 254
    const-string v0, "starts-with"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "w":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2
.end method

.method public static stringJoin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "strseq"    # Ljava/lang/Object;
    .param p1, "join"    # Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v0, "s":Ljava/lang/StringBuffer;
    const/4 v1, 0x2

    sget-object v2, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    const-string v3, "string-join"

    invoke-static {p1, v3, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "glue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 272
    .local v2, "glen":I
    const/4 v3, 0x0

    .line 273
    .local v3, "index":I
    const/4 v4, 0x0

    .line 275
    .local v4, "started":Z
    :goto_0
    invoke-static {p0, v3}, Lgnu/mapping/Values;->nextIndex(Ljava/lang/Object;I)I

    move-result v5

    move v6, v5

    .local v6, "next":I
    if-ltz v5, :cond_2

    .line 277
    invoke-static {p0, v3}, Lgnu/mapping/Values;->nextValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 278
    .local v5, "obj":Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v5, v7, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    if-eqz v4, :cond_1

    if-lez v2, :cond_1

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_1
    invoke-static {v5}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const/4 v4, 0x1

    .line 284
    move v3, v6

    .line 285
    .end local v5    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "str"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "string-length"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 127
    .local v1, "slen":I
    const/4 v2, 0x0

    .line 128
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 130
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 131
    .local v3, "ch":C
    const v5, 0xd800

    if-lt v3, v5, :cond_0

    const v5, 0xdc00

    if-ge v3, v5, :cond_0

    if-ge v4, v1, :cond_0

    .line 132
    add-int/lit8 v4, v4, 0x1

    .line 133
    :cond_0
    nop

    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 134
    move v3, v4

    goto :goto_0

    .line 135
    .end local v4    # "i":I
    :cond_1
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3
.end method

.method public static stringPad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "padcount"    # Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 229
    .local v0, "count":I
    const-string v1, ""

    if-gtz v0, :cond_1

    .line 231
    if-nez v0, :cond_0

    .line 232
    return-object v1

    .line 233
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Invalid string-pad count"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1
    const-string v2, "string-pad"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "sv":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 238
    .local v2, "slen":I
    new-instance v3, Ljava/lang/StringBuffer;

    mul-int v4, v0, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 239
    .local v3, "s":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static stringToCodepoints$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 325
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "string-to-codepoints"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 327
    .local v1, "len":I
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 328
    .local v2, "out":Lgnu/lists/Consumer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 330
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 331
    .local v3, "ch":I
    const v5, 0xd800

    if-lt v3, v5, :cond_0

    const v6, 0xdc00

    if-ge v3, v6, :cond_0

    if-ge v4, v1, :cond_0

    .line 332
    sub-int v5, v3, v5

    mul-int/lit16 v5, v5, 0x400

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v6

    add-int/2addr v5, v4

    const/high16 v4, 0x10000

    add-int v3, v5, v4

    move v4, v7

    .line 333
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_0
    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 334
    .end local v3    # "ch":I
    move v3, v4

    goto :goto_0

    .line 335
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "start"    # Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 66
    .local v0, "d1":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 67
    return-object v3

    .line 68
    :cond_0
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double v4, v0, v4

    double-to-int v2, v4

    .line 69
    .local v2, "i":I
    if-gez v2, :cond_1

    .line 70
    const/4 v2, 0x0

    .line 71
    :cond_1
    const-string v4, "substring"

    const/4 v5, 0x1

    invoke-static {p0, v4, v5, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 73
    .local v5, "len":I
    const/4 v6, 0x0

    .line 74
    .local v6, "offset":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 76
    if-lt v6, v5, :cond_2

    .line 77
    return-object v3

    .line 78
    :cond_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 79
    .local v6, "ch":C
    const v8, 0xd800

    if-lt v6, v8, :cond_3

    const v8, 0xdc00

    if-ge v6, v8, :cond_3

    if-ge v7, v5, :cond_3

    .line 80
    add-int/lit8 v7, v7, 0x1

    move v6, v7

    goto :goto_1

    .line 81
    .end local v6    # "ch":C
    :cond_3
    move v6, v7

    .end local v7    # "offset":I
    .local v6, "offset":I
    :goto_1
    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "length"    # Ljava/lang/Object;

    .line 87
    const-string v0, "substring"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 91
    .local v1, "len":I
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    .line 92
    .local v3, "d1":D
    invoke-static {p2}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    add-double/2addr v5, v3

    .line 93
    .local v5, "d2":D
    const-wide/16 v7, 0x0

    cmpg-double v9, v3, v7

    if-gtz v9, :cond_0

    .line 94
    const-wide/16 v3, 0x0

    .line 95
    :cond_0
    int-to-double v7, v1

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    .line 96
    int-to-double v5, v1

    .line 97
    :cond_1
    cmpg-double v7, v5, v3

    if-gtz v7, :cond_2

    .line 98
    return-object v2

    .line 99
    :cond_2
    double-to-int v7, v3

    .line 100
    .local v7, "i1":I
    double-to-int v8, v5

    sub-int/2addr v8, v7

    .line 101
    .local v8, "i2":I
    const/4 v9, 0x0

    .line 102
    .local v9, "offset":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    const v10, 0xdc00

    const v11, 0xd800

    if-ltz v7, :cond_5

    .line 104
    if-lt v9, v1, :cond_3

    .line 105
    return-object v2

    .line 106
    :cond_3
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "offset":I
    .local v12, "offset":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 107
    .local v9, "ch":C
    if-lt v9, v11, :cond_4

    if-ge v9, v10, :cond_4

    if-ge v12, v1, :cond_4

    .line 108
    add-int/lit8 v12, v12, 0x1

    move v9, v12

    goto :goto_1

    .line 109
    .end local v9    # "ch":C
    :cond_4
    move v9, v12

    .end local v12    # "offset":I
    .local v9, "offset":I
    :goto_1
    goto :goto_0

    .line 110
    :cond_5
    move v7, v9

    .line 111
    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_8

    .line 113
    if-lt v9, v1, :cond_6

    .line 114
    return-object v2

    .line 115
    :cond_6
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "offset":I
    .restart local v12    # "offset":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 116
    .local v9, "ch":C
    if-lt v9, v11, :cond_7

    if-ge v9, v10, :cond_7

    if-ge v12, v1, :cond_7

    .line 117
    add-int/lit8 v12, v12, 0x1

    move v9, v12

    goto :goto_3

    .line 118
    .end local v9    # "ch":C
    :cond_7
    move v9, v12

    .end local v12    # "offset":I
    .local v9, "offset":I
    :goto_3
    goto :goto_2

    .line 119
    :cond_8
    move v2, v9

    .line 120
    .end local v8    # "i2":I
    .local v2, "i2":I
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static substringAfter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .line 152
    const-string v0, "substring-after"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 156
    .local v3, "flen":I
    if-nez v3, :cond_0

    .line 157
    return-object v1

    .line 159
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "start":I
    if-ltz v4, :cond_1

    add-int v2, v4, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static substringBefore(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "find"    # Ljava/lang/Object;

    .line 140
    const-string v0, "substring-before"

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "s":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 144
    .local v3, "flen":I
    if-nez v3, :cond_0

    .line 145
    return-object v2

    .line 146
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, "start":I
    if-ltz v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 542
    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lgnu/xquery/util/StringUtils;->tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V

    .line 543
    return-void
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 9
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # Ljava/lang/String;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 549
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "tokenize"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 551
    .local v1, "out":Lgnu/lists/Consumer;
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 552
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 553
    .local v3, "len":I
    if-nez v3, :cond_0

    .line 554
    return-void

    .line 555
    :cond_0
    const/4 v4, 0x0

    .line 558
    .local v4, "start":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    .line 559
    .local v5, "matched":Z
    if-nez v5, :cond_1

    .line 561
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 562
    nop

    .line 573
    .end local v5    # "matched":Z
    return-void

    .line 564
    .restart local v5    # "matched":Z
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    .line 565
    .local v6, "end":I
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    .line 567
    if-eq v4, v6, :cond_2

    .line 569
    .end local v5    # "matched":Z
    .end local v6    # "end":I
    goto :goto_0

    .line 568
    .restart local v5    # "matched":Z
    .restart local v6    # "end":I
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "pattern matches empty string"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v7

    :goto_2
    goto :goto_1
.end method

.method public static translate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "map"    # Ljava/lang/Object;
    .param p2, "trans"    # Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, ""

    const-string v3, "translate"

    invoke-static {v0, v3, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "sv":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    .end local p1    # "map":Ljava/lang/Object;
    .local v2, "map":Ljava/lang/Object;
    instance-of v4, v2, Lgnu/kawa/xml/UntypedAtomic;

    const-string v5, "xs:string"

    if-nez v4, :cond_1

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v6, 0x2

    invoke-direct {v4, v3, v6, v0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "m":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 172
    .local v6, "mlen":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 173
    .end local p2    # "trans":Ljava/lang/Object;
    .local v7, "trans":Ljava/lang/Object;
    instance-of v8, v7, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v8, :cond_3

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    new-instance v8, Lgnu/mapping/WrongType;

    const/4 v9, 0x3

    invoke-direct {v8, v3, v9, v0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "t":Ljava/lang/String;
    if-nez v6, :cond_4

    return-object v1

    .line 179
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 180
    .local v5, "slen":I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 181
    .local v8, "s":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    .line 184
    .local v9, "tlen":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v5, :cond_e

    .line 186
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "i":I
    .local v11, "i":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 187
    .local v10, "c1":C
    const/4 v12, 0x0

    .line 188
    .local v12, "c2":C
    const v13, 0xdc00

    const v14, 0xd800

    if-lt v10, v14, :cond_5

    if-ge v10, v13, :cond_5

    if-ge v11, v5, :cond_5

    .line 189
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "i":I
    .local v15, "i":I
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_3

    .line 190
    .end local v15    # "i":I
    .restart local v11    # "i":I
    :cond_5
    move v15, v11

    .end local v11    # "i":I
    .restart local v15    # "i":I
    :goto_3
    const/4 v11, 0x0

    .line 191
    .local v11, "j":I
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "mi":I
    :goto_4
    if-ge v13, v6, :cond_c

    .line 193
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "mi":I
    .local v14, "mi":I
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 194
    .local v13, "m1":C
    const/16 v16, 0x0

    .line 195
    .local v16, "m2":C
    const v0, 0xd800

    if-lt v13, v0, :cond_6

    const v0, 0xdc00

    if-ge v13, v0, :cond_6

    if-ge v14, v6, :cond_6

    .line 196
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "mi":I
    .local v0, "mi":I
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move v14, v0

    move/from16 v0, v16

    goto :goto_5

    .line 197
    .end local v0    # "mi":I
    .restart local v14    # "mi":I
    :cond_6
    move/from16 v0, v16

    .end local v16    # "m2":C
    .local v0, "m2":C
    :goto_5
    if-ne v13, v10, :cond_b

    if-ne v0, v12, :cond_b

    .line 199
    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v0

    move/from16 v0, v21

    .line 201
    .local v0, "ti":I
    .restart local v16    # "m2":C
    :goto_6
    if-lt v0, v9, :cond_7

    .line 202
    move-object/from16 v17, v1

    move-object/from16 v19, v2

    goto :goto_9

    .line 203
    :cond_7
    move-object/from16 v17, v1

    .end local v1    # "sv":Ljava/lang/String;
    .local v17, "sv":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ti":I
    .local v1, "ti":I
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "t1":C
    const/16 v18, 0x0

    .line 205
    .local v18, "t2":C
    move-object/from16 v19, v2

    const v2, 0xd800

    .end local v2    # "map":Ljava/lang/Object;
    .local v19, "map":Ljava/lang/Object;
    if-lt v0, v2, :cond_8

    const v2, 0xdc00

    if-ge v0, v2, :cond_9

    if-ge v1, v9, :cond_9

    .line 206
    add-int/lit8 v20, v1, 0x1

    .end local v1    # "ti":I
    .local v20, "ti":I
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v1, v20

    goto :goto_7

    .line 205
    .end local v20    # "ti":I
    .restart local v1    # "ti":I
    :cond_8
    const v2, 0xdc00

    .line 207
    :cond_9
    :goto_7
    if-nez v11, :cond_a

    .line 209
    move v10, v0

    .line 210
    move/from16 v12, v18

    .line 211
    nop

    .line 214
    .end local v0    # "t1":C
    .end local v1    # "ti":I
    .end local v18    # "t2":C
    goto :goto_8

    .line 199
    .restart local v1    # "ti":I
    :cond_a
    add-int/lit8 v11, v11, -0x1

    move v0, v1

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto :goto_6

    .line 197
    .end local v16    # "m2":C
    .end local v17    # "sv":Ljava/lang/String;
    .end local v19    # "map":Ljava/lang/Object;
    .local v0, "m2":C
    .local v1, "sv":Ljava/lang/String;
    .restart local v2    # "map":Ljava/lang/Object;
    :cond_b
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    const v2, 0xdc00

    .line 216
    .end local v0    # "m2":C
    .end local v1    # "sv":Ljava/lang/String;
    .end local v2    # "map":Ljava/lang/Object;
    .restart local v16    # "m2":C
    .restart local v17    # "sv":Ljava/lang/String;
    .restart local v19    # "map":Ljava/lang/Object;
    nop

    .end local v13    # "m1":C
    .end local v16    # "m2":C
    add-int/lit8 v11, v11, 0x1

    .line 217
    move-object/from16 v0, p0

    move v13, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    const v14, 0xd800

    goto :goto_4

    .line 191
    .end local v14    # "mi":I
    .end local v17    # "sv":Ljava/lang/String;
    .end local v19    # "map":Ljava/lang/Object;
    .restart local v1    # "sv":Ljava/lang/String;
    .restart local v2    # "map":Ljava/lang/Object;
    .local v13, "mi":I
    :cond_c
    move-object/from16 v17, v1

    move-object/from16 v19, v2

    .line 218
    .end local v1    # "sv":Ljava/lang/String;
    .end local v2    # "map":Ljava/lang/Object;
    .end local v13    # "mi":I
    .restart local v17    # "sv":Ljava/lang/String;
    .restart local v19    # "map":Ljava/lang/Object;
    :goto_8
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    if-eqz v12, :cond_d

    .line 220
    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    .end local v10    # "c1":C
    .end local v11    # "j":I
    .end local v12    # "c2":C
    :cond_d
    nop

    .line 184
    :goto_9
    move-object/from16 v0, p0

    move v10, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    goto/16 :goto_2

    .line 223
    .end local v15    # "i":I
    .end local v17    # "sv":Ljava/lang/String;
    .end local v19    # "map":Ljava/lang/Object;
    .restart local v1    # "sv":Ljava/lang/String;
    .restart local v2    # "map":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "upper-case"

    invoke-static {p0, v2, v0, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
