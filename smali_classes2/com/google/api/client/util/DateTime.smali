.class public final Lcom/google/api/client/util/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;,
        Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    }
.end annotation


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field private static final RFC3339_PATTERN:Ljava/util/regex/Pattern;

.field private static final RFC3339_REGEX:Ljava/lang/String; = "(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dateOnly:Z

.field private final tzShift:I

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    .line 50
    const-string v0, "(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d{1,9})?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->RFC3339_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .param p1, "value"    # J

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 86
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2
    .param p1, "value"    # J
    .param p3, "tzShift"    # I

    .line 108
    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    .line 146
    .local v0, "dateTime":Lcom/google/api/client/util/DateTime;
    iget-boolean v1, v0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iput-boolean v1, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 147
    iget-wide v1, v0, Lcom/google/api/client/util/DateTime;->value:J

    iput-wide v1, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 148
    iget v1, v0, Lcom/google/api/client/util/DateTime;->tzShift:I

    iput v1, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/util/Date;

    .line 97
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "zone"    # Ljava/util/TimeZone;

    .line 73
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    if-nez p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ZJLjava/lang/Integer;)V
    .locals 2
    .param p1, "dateOnly"    # Z
    .param p2, "value"    # J
    .param p4, "tzShift"    # Ljava/lang/Integer;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean p1, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 122
    iput-wide p2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 123
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 124
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 125
    return-void
.end method

.method private static appendInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "num"    # I
    .param p2, "numDigits"    # I

    .line 428
    if-gez p1, :cond_0

    .line 429
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    neg-int p1, p1

    .line 432
    :cond_0
    move v0, p1

    .line 433
    .local v0, "x":I
    :goto_0
    if-lez v0, :cond_1

    .line 434
    div-int/lit8 v0, v0, 0xa

    .line 435
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 438
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    .end local v1    # "i":I
    :cond_2
    if-eqz p1, :cond_3

    .line 441
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    :cond_3
    return-void
.end method

.method public static parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 277
    invoke-static {p0}, Lcom/google/api/client/util/DateTime;->parseRfc3339WithNanoSeconds(Ljava/lang/String;)Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->access$000(Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parseRfc3339ToSecondsAndNanos(Ljava/lang/String;)Lcom/google/api/client/util/DateTime$SecondsAndNanos;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 289
    invoke-static {p0}, Lcom/google/api/client/util/DateTime;->parseRfc3339WithNanoSeconds(Ljava/lang/String;)Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;

    move-result-object v0

    .line 290
    .local v0, "time":Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;
    invoke-static {v0}, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;->access$100(Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;)Lcom/google/api/client/util/DateTime$SecondsAndNanos;

    move-result-object v1

    return-object v1
.end method

.method private static parseRfc3339WithNanoSeconds(Ljava/lang/String;)Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;
    .locals 26
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 369
    move-object/from16 v0, p0

    sget-object v1, Lcom/google/api/client/util/DateTime;->RFC3339_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 370
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 374
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 375
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v11, v4, -0x1

    .line 376
    .local v11, "month":I
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 377
    .local v12, "day":I
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move/from16 v21, v4

    .line 378
    .local v21, "isTimeGiven":Z
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    .line 379
    .local v15, "tzShiftRegexGroup":Ljava/lang/String;
    if-eqz v15, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move/from16 v22, v5

    .line 380
    .local v22, "isTzShiftGiven":Z
    const/4 v5, 0x0

    .line 381
    .local v5, "hourOfDay":I
    const/4 v6, 0x0

    .line 382
    .local v6, "minute":I
    const/4 v7, 0x0

    .line 383
    .local v7, "second":I
    const/4 v8, 0x0

    .line 384
    .local v8, "nanoseconds":I
    const/4 v14, 0x0

    .line 386
    .local v14, "tzShiftInteger":Ljava/lang/Integer;
    if-eqz v22, :cond_3

    if-eqz v21, :cond_2

    goto :goto_2

    .line 387
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid date/time format, cannot specify time zone shift without specifying time: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    :cond_3
    :goto_2
    if-eqz v21, :cond_5

    .line 394
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 395
    const/4 v9, 0x6

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 396
    const/4 v9, 0x7

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 397
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 398
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v9, 0x30

    invoke-static {v2, v4, v9}, Lcom/google/common/base/Strings;->padEnd(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "fraction":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    goto :goto_3

    .line 397
    .end local v2    # "fraction":Ljava/lang/String;
    :cond_4
    move v2, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    goto :goto_3

    .line 393
    :cond_5
    move v2, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    .line 402
    .end local v5    # "hourOfDay":I
    .end local v6    # "minute":I
    .end local v7    # "second":I
    .end local v8    # "nanoseconds":I
    .local v2, "hourOfDay":I
    .local v23, "minute":I
    .local v24, "second":I
    .local v25, "nanoseconds":I
    :goto_3
    new-instance v4, Ljava/util/GregorianCalendar;

    sget-object v5, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 403
    .local v4, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 404
    move v5, v3

    move v6, v11

    move v7, v12

    move v8, v2

    move/from16 v9, v23

    move/from16 v10, v24

    invoke-virtual/range {v4 .. v10}, Ljava/util/Calendar;->set(IIIIII)V

    .line 405
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 407
    .local v5, "value":J
    if-eqz v21, :cond_8

    if-eqz v22, :cond_8

    .line 408
    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_7

    .line 409
    nop

    .line 410
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    .line 411
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    .line 412
    .local v7, "tzShift":I
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6

    .line 413
    neg-int v7, v7

    .line 415
    :cond_6
    int-to-long v8, v7

    const-wide/32 v16, 0xea60

    mul-long v8, v8, v16

    sub-long/2addr v5, v8

    .line 416
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 417
    .end local v7    # "tzShift":I
    move-object v7, v14

    goto :goto_4

    .line 418
    :cond_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v7, v14

    goto :goto_4

    .line 422
    :cond_8
    move-object v7, v14

    .end local v14    # "tzShiftInteger":Ljava/lang/Integer;
    .local v7, "tzShiftInteger":Ljava/lang/Integer;
    :goto_4
    const-wide/16 v8, 0x3e8

    div-long v8, v5, v8

    .line 423
    .local v8, "secondsSinceEpoch":J
    new-instance v10, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;

    const/16 v20, 0x0

    move-object v14, v10

    move-object v13, v15

    .end local v15    # "tzShiftRegexGroup":Ljava/lang/String;
    .local v13, "tzShiftRegexGroup":Ljava/lang/String;
    move-wide v15, v8

    move/from16 v17, v25

    move/from16 v18, v21

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v20}, Lcom/google/api/client/util/DateTime$Rfc3339ParseResult;-><init>(JIZLjava/lang/Integer;Lcom/google/api/client/util/DateTime$1;)V

    return-object v10

    .line 371
    .end local v2    # "hourOfDay":I
    .end local v3    # "year":I
    .end local v4    # "dateTime":Ljava/util/Calendar;
    .end local v5    # "value":J
    .end local v7    # "tzShiftInteger":Ljava/lang/Integer;
    .end local v8    # "secondsSinceEpoch":J
    .end local v11    # "month":I
    .end local v12    # "day":I
    .end local v13    # "tzShiftRegexGroup":Ljava/lang/String;
    .end local v21    # "isTimeGiven":Z
    .end local v22    # "isTzShiftGiven":Z
    .end local v23    # "minute":I
    .end local v24    # "second":I
    .end local v25    # "nanoseconds":I
    :cond_9
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid date/time format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 241
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 242
    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Lcom/google/api/client/util/DateTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 245
    return v2

    .line 247
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/api/client/util/DateTime;

    .line 248
    .local v1, "other":Lcom/google/api/client/util/DateTime;
    iget-boolean v3, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iget-boolean v4, v1, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-wide v5, v1, Lcom/google/api/client/util/DateTime;->value:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget v3, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    iget v4, v1, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTimeZoneShift()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/google/api/client/util/DateTime;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 253
    iget-wide v0, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    int-to-long v4, v4

    const/4 v6, 0x3

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method public isDateOnly()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringRfc3339()Ljava/lang/String;
    .locals 9

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 185
    .local v1, "dateTime":Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget v4, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    .line 186
    .local v2, "localTime":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 188
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-static {v0, v5, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 189
    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v0, v7, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v0, v4, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 193
    iget-boolean v4, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-nez v4, :cond_3

    .line 195
    const/16 v4, 0x54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v0, v4, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 197
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v0, v7, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 199
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v0, v7, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 202
    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->isSet(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 203
    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-static {v0, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 207
    :cond_0
    iget v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-nez v7, :cond_1

    .line 208
    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 210
    :cond_1
    iget v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 211
    .local v7, "absTzShift":I
    iget v8, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-lez v8, :cond_2

    .line 212
    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    neg-int v7, v7

    .line 218
    :goto_0
    div-int/lit8 v5, v7, 0x3c

    .line 219
    .local v5, "tzHours":I
    rem-int/lit8 v8, v7, 0x3c

    .line 220
    .local v8, "tzMinutes":I
    invoke-static {v0, v5, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v0, v8, v6}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 225
    .end local v5    # "tzHours":I
    .end local v7    # "absTzShift":I
    .end local v8    # "tzMinutes":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
