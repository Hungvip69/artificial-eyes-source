.class public Lgnu/math/DateTime;
.super Lgnu/math/Quantity;
.source "DateTime.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DATE_MASK:I = 0xe

.field static final DAY_COMPONENT:I = 0x3

.field public static final DAY_MASK:I = 0x8

.field public static GMT:Ljava/util/TimeZone; = null

.field static final HOURS_COMPONENT:I = 0x4

.field public static final HOURS_MASK:I = 0x10

.field static final MINUTES_COMPONENT:I = 0x5

.field public static final MINUTES_MASK:I = 0x20

.field static final MONTH_COMPONENT:I = 0x2

.field public static final MONTH_MASK:I = 0x4

.field static final SECONDS_COMPONENT:I = 0x6

.field public static final SECONDS_MASK:I = 0x40

.field static final TIMEZONE_COMPONENT:I = 0x7

.field public static final TIMEZONE_MASK:I = 0x80

.field public static final TIME_MASK:I = 0x70

.field static final YEAR_COMPONENT:I = 0x1

.field public static final YEAR_MASK:I = 0x2

.field private static final minDate:Ljava/util/Date;


# instance fields
.field calendar:Ljava/util/GregorianCalendar;

.field mask:I

.field nanoSeconds:I

.field unit:Lgnu/math/Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 90
    new-instance v0, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    .line 229
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "mask"    # I

    .line 93
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 20
    sget-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 94
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 96
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    sget-object v1, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 97
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 98
    iput p1, p0, Lgnu/math/DateTime;->mask:I

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/util/GregorianCalendar;)V
    .locals 1
    .param p1, "mask"    # I
    .param p2, "calendar"    # Ljava/util/GregorianCalendar;

    .line 102
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 20
    sget-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 103
    iput-object p2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 104
    iput p1, p0, Lgnu/math/DateTime;->mask:I

    .line 105
    return-void
.end method

.method public static add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;
    .locals 12
    .param p0, "x"    # Lgnu/math/DateTime;
    .param p1, "y"    # Lgnu/math/Duration;
    .param p2, "k"    # I

    .line 513
    iget-object v0, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_7

    iget-object v0, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgnu/math/DateTime;->mask:I

    const/16 v1, 0xe

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 516
    :cond_0
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 517
    .local v0, "r":Lgnu/math/DateTime;
    iget v1, p1, Lgnu/math/Duration;->months:I

    if-eqz v1, :cond_3

    .line 519
    invoke-virtual {v0}, Lgnu/math/DateTime;->getYear()I

    move-result v1

    const/16 v2, 0xc

    mul-int/lit8 v1, v1, 0xc

    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 520
    .local v1, "month":I
    iget v3, p1, Lgnu/math/Duration;->months:I

    mul-int v3, v3, p2

    add-int/2addr v1, v3

    .line 521
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 523
    .local v3, "day":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v1, v2, :cond_1

    .line 525
    div-int/lit8 v6, v1, 0xc

    .line 526
    .local v6, "year":I
    rem-int/2addr v1, v2

    .line 527
    iget-object v2, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 528
    invoke-static {v1, v6}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v2

    .local v2, "daysInMonth":I
    goto :goto_0

    .line 532
    .end local v2    # "daysInMonth":I
    .end local v6    # "year":I
    :cond_1
    rsub-int/lit8 v1, v1, 0xb

    .line 533
    iget-object v2, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 534
    div-int/lit8 v2, v1, 0xc

    add-int/lit8 v6, v2, 0x1

    .line 535
    .restart local v6    # "year":I
    rem-int/lit8 v2, v1, 0xc

    rsub-int/lit8 v1, v2, 0xb

    .line 536
    invoke-static {v1, v4}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v2

    .line 539
    .restart local v2    # "daysInMonth":I
    :goto_0
    if-le v3, v2, :cond_2

    .line 540
    move v3, v2

    .line 541
    :cond_2
    iget-object v4, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v6, v1, v3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 543
    .end local v1    # "month":I
    .end local v2    # "daysInMonth":I
    .end local v3    # "day":I
    .end local v6    # "year":I
    :cond_3
    iget v1, p0, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v1, v1

    int-to-long v3, p2

    iget-wide v5, p1, Lgnu/math/Duration;->seconds:J

    const-wide/32 v7, 0x3b9aca00

    mul-long v5, v5, v7

    iget v9, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v9, v9

    add-long/2addr v5, v9

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    .line 544
    .local v1, "nanos":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    .line 546
    iget v5, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v5, v5, 0x70

    if-nez v5, :cond_5

    .line 548
    const-wide v5, 0x4e94914f0000L

    .line 549
    .local v5, "nanosPerDay":J
    rem-long v9, v1, v5

    .line 550
    .local v9, "mod":J
    cmp-long v11, v9, v3

    if-gez v11, :cond_4

    .line 551
    add-long/2addr v9, v5

    .line 552
    :cond_4
    sub-long/2addr v1, v9

    .line 554
    .end local v5    # "nanosPerDay":J
    .end local v9    # "mod":J
    :cond_5
    iget-object v3, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 555
    .local v3, "millis":J
    div-long v5, v1, v7

    const-wide/16 v9, 0x3e8

    mul-long v5, v5, v9

    add-long/2addr v3, v5

    .line 556
    iget-object v5, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 557
    rem-long v5, v1, v7

    long-to-int v6, v5

    iput v6, v0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 559
    .end local v3    # "millis":J
    :cond_6
    return-object v0

    .line 515
    .end local v0    # "r":Lgnu/math/DateTime;
    .end local v1    # "nanos":J
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid date/time +/- duration combinatuion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addMinutes(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .locals 1
    .param p0, "x"    # Lgnu/math/DateTime;
    .param p1, "y"    # I

    .line 564
    mul-int/lit8 v0, p1, 0x3c

    invoke-static {p0, v0}, Lgnu/math/DateTime;->addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .locals 9
    .param p0, "x"    # Lgnu/math/DateTime;
    .param p1, "y"    # I

    .line 569
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 570
    .local v0, "r":Lgnu/math/DateTime;
    int-to-long v1, p1

    const-wide/32 v3, 0x3b9aca00

    mul-long v1, v1, v3

    .line 571
    .local v1, "nanos":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 573
    iget v3, p0, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 574
    iget-object v3, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    .line 575
    .local v3, "millis":J
    const-wide/32 v5, 0xf4240

    div-long v7, v1, v5

    add-long/2addr v3, v7

    .line 576
    iget-object v7, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v7, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 577
    rem-long v5, v1, v5

    long-to-int v6, v5

    iput v6, v0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 579
    .end local v3    # "millis":J
    :cond_0
    return-object v0
.end method

.method private static append(ILjava/lang/StringBuffer;I)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "minWidth"    # I

    .line 600
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 601
    .local v0, "start":I
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 602
    add-int v1, v0, p2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 603
    .local v1, "padding":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 604
    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 605
    :cond_0
    return-void
.end method

.method public static compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I
    .locals 9
    .param p0, "date1"    # Lgnu/math/DateTime;
    .param p1, "date2"    # Lgnu/math/DateTime;

    .line 429
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 430
    .local v0, "millis1":J
    iget-object v2, p1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 431
    .local v2, "millis2":J
    iget v4, p0, Lgnu/math/DateTime;->mask:I

    iget v5, p1, Lgnu/math/DateTime;->mask:I

    or-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xe

    if-nez v4, :cond_1

    .line 433
    const-wide/32 v4, 0x5265c00

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-gez v8, :cond_0

    add-long/2addr v0, v4

    .line 434
    :cond_0
    cmp-long v8, v2, v6

    if-gez v8, :cond_1

    add-long/2addr v2, v4

    .line 436
    :cond_1
    iget v4, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 437
    .local v4, "nanos1":I
    iget v5, p1, Lgnu/math/DateTime;->nanoSeconds:I

    .line 438
    .local v5, "nanos2":I
    const v6, 0xf4240

    div-int v7, v4, v6

    int-to-long v7, v7

    add-long/2addr v0, v7

    .line 439
    div-int v7, v5, v6

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 440
    rem-int/2addr v4, v6

    .line 441
    rem-int/2addr v5, v6

    .line 442
    const/4 v6, -0x1

    cmp-long v7, v0, v2

    if-gez v7, :cond_2

    :goto_0
    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    cmp-long v8, v0, v2

    if-lez v8, :cond_3

    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    if-ge v4, v5, :cond_4

    goto :goto_0

    :cond_4
    if-le v4, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_2
    return v6
.end method

.method public static daysInMonth(II)I
    .locals 1
    .param p0, "month"    # I
    .param p1, "year"    # I

    .line 215
    sparse-switch p0, :sswitch_data_0

    .line 225
    const/16 v0, 0x1f

    return v0

    .line 221
    :sswitch_0
    const/16 v0, 0x1e

    return v0

    .line 223
    :sswitch_1
    invoke-static {p1}, Lgnu/math/DateTime;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 210
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static minutesToTimeZone(I)Ljava/util/TimeZone;
    .locals 2
    .param p0, "minutes"    # I

    .line 663
    if-nez p0, :cond_0

    .line 664
    sget-object v0, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    return-object v0

    .line 665
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/String;I)Lgnu/math/DateTime;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "mask"    # I

    .line 109
    new-instance v0, Lgnu/math/DateTime;

    invoke-direct {v0, p1}, Lgnu/math/DateTime;-><init>(I)V

    .line 110
    .local v0, "result":Lgnu/math/DateTime;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 112
    .local v1, "len":I
    const/4 v2, 0x0

    .line 113
    .local v2, "pos":I
    and-int/lit8 v3, p1, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 114
    .local v3, "wantDate":Z
    :goto_0
    and-int/lit8 v6, p1, 0x70

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 115
    .local v4, "wantTime":Z
    :cond_1
    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {v0, p0, v2, p1}, Lgnu/math/DateTime;->parseDate(Ljava/lang/String;II)I

    move-result v2

    .line 118
    if-eqz v4, :cond_4

    .line 120
    if-ltz v2, :cond_3

    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 123
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 121
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 126
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 127
    invoke-virtual {v0, p0, v2}, Lgnu/math/DateTime;->parseTime(Ljava/lang/String;I)I

    move-result v2

    .line 128
    :cond_5
    invoke-virtual {v0, p0, v2}, Lgnu/math/DateTime;->parseZone(Ljava/lang/String;I)I

    move-result v2

    .line 129
    if-ne v2, v1, :cond_6

    .line 131
    return-object v0

    .line 130
    :cond_6
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized date/time \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static parseDigits(Ljava/lang/String;I)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 359
    move v0, p1

    .line 360
    .local v0, "i":I
    const/4 v1, -0x1

    .line 361
    .local v1, "val":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 362
    .local v2, "len":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 365
    .local v3, "ch":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 366
    .local v4, "dig":I
    if-gez v4, :cond_0

    .line 367
    goto :goto_2

    .line 368
    :cond_0
    const/16 v5, 0x4e20

    if-le v1, v5, :cond_1

    .line 369
    const/4 v5, 0x0

    return v5

    .line 370
    :cond_1
    if-gez v1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v5, v4

    :goto_1
    move v1, v5

    .line 371
    nop

    .end local v3    # "ch":C
    .end local v4    # "dig":I
    add-int/lit8 v0, v0, 0x1

    .line 372
    goto :goto_0

    .line 373
    :cond_3
    :goto_2
    if-gez v1, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v3, v0

    :goto_3
    return v3
.end method

.method public static sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;
    .locals 14
    .param p0, "date1"    # Lgnu/math/DateTime;
    .param p1, "date2"    # Lgnu/math/DateTime;

    .line 455
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 456
    .local v0, "millis1":J
    iget-object v2, p1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 457
    .local v2, "millis2":J
    iget v4, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 458
    .local v4, "nanos1":I
    iget v5, p1, Lgnu/math/DateTime;->nanoSeconds:I

    .line 459
    .local v5, "nanos2":I
    const v6, 0xf4240

    div-int v7, v4, v6

    int-to-long v7, v7

    add-long/2addr v0, v7

    .line 460
    div-int v7, v5, v6

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 461
    rem-int/2addr v4, v6

    .line 462
    rem-int/2addr v5, v6

    .line 463
    sub-long v6, v0, v2

    .line 464
    .local v6, "millis":J
    const-wide/16 v8, 0x3e8

    div-long v10, v6, v8

    .line 465
    .local v10, "seconds":J
    rem-long v8, v6, v8

    const-wide/32 v12, 0xf4240

    mul-long v8, v8, v12

    int-to-long v12, v5

    add-long/2addr v8, v12

    int-to-long v12, v5

    sub-long/2addr v8, v12

    long-to-int v9, v8

    .line 466
    .local v9, "nanos":I
    const v8, 0x3b9aca00

    div-int v12, v9, v8

    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 467
    rem-int/2addr v9, v8

    .line 468
    const/4 v8, 0x0

    sget-object v12, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {v8, v10, v11, v9, v12}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v8

    return-object v8
.end method

.method public static toStringZone(ILjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "minutes"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 683
    if-nez p0, :cond_0

    .line 684
    const/16 v0, 0x5a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 687
    :cond_0
    if-gez p0, :cond_1

    .line 689
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 690
    neg-int p0, p0

    goto :goto_0

    .line 693
    :cond_1
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 694
    :goto_0
    div-int/lit8 v0, p0, 0x3c

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 695
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 696
    rem-int/lit8 v0, p0, 0x3c

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 698
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 584
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 585
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0, p2}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0

    .line 586
    :cond_0
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 587
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    invoke-static {p0, v0}, Lgnu/math/DateTime;->sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 588
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .line 593
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 594
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0, p2}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0

    .line 595
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public adjustTimezone(I)Lgnu/math/DateTime;
    .locals 7
    .param p1, "newOffset"    # I

    .line 483
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 485
    .local v0, "r":Lgnu/math/DateTime;
    if-nez p1, :cond_0

    .line 486
    sget-object v1, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    .local v1, "zone":Ljava/util/TimeZone;
    goto :goto_0

    .line 489
    .end local v1    # "zone":Ljava/util/TimeZone;
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "GMT"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 490
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p1, v1}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v1, v2

    .line 493
    .local v1, "zone":Ljava/util/TimeZone;
    :goto_0
    iget-object v2, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 494
    iget v2, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    .line 496
    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 497
    .local v2, "millis":J
    iget-object v4, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 498
    iget v4, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v4, v4, 0x70

    if-nez v4, :cond_1

    .line 500
    iget-object v4, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 501
    iget-object v4, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 502
    iget-object v4, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 503
    iput v6, v0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 505
    .end local v2    # "millis":J
    :cond_1
    goto :goto_1

    .line 507
    :cond_2
    iget v2, v0, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lgnu/math/DateTime;->mask:I

    .line 508
    :goto_1
    return-object v0
.end method

.method public cast(I)Lgnu/math/DateTime;
    .locals 5
    .param p1, "newComponents"    # I

    .line 55
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, -0x81

    .line 56
    .local v0, "oldComponents":I
    if-ne p1, v0, :cond_0

    .line 57
    return-object p0

    .line 58
    :cond_0
    new-instance v1, Lgnu/math/DateTime;

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v1, p1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 60
    .local v1, "copy":Lgnu/math/DateTime;
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    const/16 v2, 0xe

    if-ne v0, v2, :cond_1

    const/16 v2, 0x7e

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v2, Ljava/lang/ClassCastException;

    const-string v3, "cannot cast DateTime - missing conponents"

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    iget v2, v1, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Lgnu/math/DateTime;->mask:I

    goto :goto_1

    .line 68
    :cond_3
    iget v2, v1, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lgnu/math/DateTime;->mask:I

    .line 69
    :goto_1
    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, v0

    .line 70
    .local v2, "extraComponents":I
    and-int/lit8 v3, v2, 0x70

    if-eqz v3, :cond_4

    .line 72
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 73
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 74
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    goto :goto_2

    .line 77
    :cond_4
    iget v3, p0, Lgnu/math/DateTime;->nanoSeconds:I

    iput v3, v1, Lgnu/math/DateTime;->nanoSeconds:I

    .line 78
    :goto_2
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_5

    .line 80
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 81
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 83
    :cond_5
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    .line 84
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 85
    :cond_6
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_7

    .line 86
    iget-object v3, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 87
    :cond_7
    return-object v1
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 448
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_0

    .line 449
    move-object v0, p1

    check-cast v0, Lgnu/math/DateTime;

    invoke-static {p0, v0}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result v0

    return v0

    .line 450
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    return v0
.end method

.method public components()I
    .locals 1

    .line 51
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, -0x81

    return v0
.end method

.method public getDay()I
    .locals 2

    .line 391
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .locals 2

    .line 396
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 2

    .line 401
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 386
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getNanoSecondsOnly()I
    .locals 1

    .line 416
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    return v0
.end method

.method public getSecondsOnly()I
    .locals 2

    .line 406
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getWholeSeconds()I
    .locals 2

    .line 411
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 3

    .line 378
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 379
    .local v0, "year":I
    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 380
    rsub-int/lit8 v0, v0, 0x1

    .line 381
    :cond_0
    return v0
.end method

.method public getZoneMinutes()I
    .locals 2

    .line 655
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .locals 1

    .line 725
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    .line 730
    new-instance v0, Ljava/lang/Error;

    const-string v1, "DateTime.isZero not meaningful!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isZoneUnspecified()Z
    .locals 1

    .line 650
    iget v0, p0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parseDate(Ljava/lang/String;II)I
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "mask"    # I

    .line 136
    if-gez p2, :cond_0

    .line 137
    return p2

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 139
    .local v0, "len":I
    const/4 v1, 0x0

    .line 140
    .local v1, "negYear":Z
    const/16 v2, 0x2d

    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 142
    add-int/lit8 p2, p2, 0x1

    .line 143
    const/4 v1, 0x1

    .line 145
    :cond_1
    move v3, p2

    .line 147
    .local v3, "pos":I
    and-int/lit8 v4, p3, 0x2

    const v5, 0xffff

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 149
    if-nez v1, :cond_2

    .line 150
    return v6

    .line 151
    :cond_2
    const/4 v4, -0x1

    .local v4, "year":I
    goto :goto_2

    .line 155
    .end local v4    # "year":I
    :cond_3
    invoke-static {p1, v3}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v4

    .line 156
    .local v4, "part":I
    shr-int/lit8 v8, v4, 0x10

    .line 157
    .local v8, "year":I
    and-int v3, v4, v5

    .line 158
    add-int/lit8 v9, p2, 0x4

    if-eq v3, v9, :cond_5

    add-int/lit8 v9, p2, 0x4

    if-le v3, v9, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_5

    .line 159
    :cond_4
    return v6

    .line 160
    :cond_5
    if-nez v1, :cond_7

    if-nez v8, :cond_6

    goto :goto_0

    .line 166
    :cond_6
    iget-object v9, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v9, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    .line 162
    :cond_7
    :goto_0
    iget-object v9, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 163
    iget-object v9, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v9, v7, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 168
    .end local v4    # "part":I
    :goto_1
    move v4, v8

    .end local v8    # "year":I
    .local v4, "year":I
    :goto_2
    and-int/lit8 v8, p3, 0xc

    if-nez v8, :cond_8

    .line 169
    return v3

    .line 170
    :cond_8
    if-ge v3, v0, :cond_13

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v2, :cond_9

    goto :goto_7

    .line 172
    :cond_9
    add-int/2addr v3, v7

    move p2, v3

    .line 173
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_c

    .line 175
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v7

    .line 176
    .local v7, "part":I
    shr-int/lit8 v8, v7, 0x10

    .line 177
    .local v8, "month":I
    and-int v3, v7, v5

    .line 178
    if-lez v8, :cond_b

    const/16 v9, 0xc

    if-gt v8, v9, :cond_b

    add-int/lit8 v9, p2, 0x2

    if-eq v3, v9, :cond_a

    goto :goto_3

    .line 180
    :cond_a
    iget-object v9, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 181
    and-int/lit8 v9, p3, 0x8

    if-nez v9, :cond_d

    .line 182
    return v3

    .line 179
    :cond_b
    :goto_3
    return v6

    .line 185
    .end local v7    # "part":I
    .end local v8    # "month":I
    :cond_c
    const/4 v8, -0x1

    .line 186
    .restart local v8    # "month":I
    :cond_d
    if-ge v3, v0, :cond_12

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v2, :cond_e

    goto :goto_6

    .line 188
    :cond_e
    add-int/lit8 p2, v3, 0x1

    .line 189
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    .line 190
    .local v2, "part":I
    shr-int/lit8 v7, v2, 0x10

    .line 191
    .local v7, "day":I
    and-int v3, v2, v5

    .line 192
    if-lez v7, :cond_11

    add-int/lit8 v5, p2, 0x2

    if-ne v3, v5, :cond_11

    .line 195
    and-int/lit8 v5, p3, 0x4

    if-nez v5, :cond_f

    .line 196
    const/16 v5, 0x1f

    .local v5, "maxDay":I
    goto :goto_5

    .line 198
    .end local v5    # "maxDay":I
    :cond_f
    add-int/lit8 v5, v8, -0x1

    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_10

    move v9, v4

    goto :goto_4

    :cond_10
    const/16 v9, 0x7d0

    :goto_4
    invoke-static {v5, v9}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v5

    .line 199
    .restart local v5    # "maxDay":I
    :goto_5
    if-gt v7, v5, :cond_11

    .line 201
    iget-object v6, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 202
    return v3

    .line 205
    .end local v5    # "maxDay":I
    :cond_11
    return v6

    .line 187
    .end local v2    # "part":I
    .end local v7    # "day":I
    :cond_12
    :goto_6
    return v6

    .line 171
    .end local v8    # "month":I
    :cond_13
    :goto_7
    return v6
.end method

.method parseTime(Ljava/lang/String;I)I
    .locals 13
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 299
    if-gez p2, :cond_0

    .line 300
    return p2

    .line 301
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 302
    .local v0, "len":I
    move v1, p2

    .line 303
    .local v1, "pos":I
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    .line 304
    .local v2, "part":I
    shr-int/lit8 v3, v2, 0x10

    .line 305
    .local v3, "hour":I
    const v4, 0xffff

    and-int v1, v2, v4

    .line 306
    const/4 v5, -0x1

    const/16 v6, 0x18

    if-gt v3, v6, :cond_9

    add-int/lit8 v7, p2, 0x2

    if-ne v1, v7, :cond_9

    if-eq v1, v0, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_9

    .line 308
    add-int/lit8 p2, v1, 0x1

    .line 309
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    .line 310
    shr-int/lit8 v7, v2, 0x10

    .line 311
    .local v7, "minute":I
    and-int v1, v2, v4

    .line 312
    const/16 v9, 0x3c

    if-ge v7, v9, :cond_9

    add-int/lit8 v10, p2, 0x2

    if-ne v1, v10, :cond_9

    if-eq v1, v0, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_9

    .line 315
    add-int/lit8 p2, v1, 0x1

    .line 316
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    .line 317
    shr-int/lit8 v8, v2, 0x10

    .line 318
    .local v8, "second":I
    and-int v1, v2, v4

    .line 320
    if-ge v8, v9, :cond_9

    add-int/lit8 v4, p2, 0x2

    if-ne v1, v4, :cond_9

    .line 322
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x2e

    if-ne v4, v9, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0xa

    invoke-static {v4, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_6

    .line 325
    add-int/lit8 p2, v1, 0x1

    .line 326
    move v1, p2

    .line 327
    const/4 v4, 0x0

    .line 328
    .local v4, "nanos":I
    const/4 v10, 0x0

    .line 329
    .local v10, "nfrac":I
    :goto_0
    const/16 v11, 0x9

    if-ge v1, v0, :cond_4

    .line 331
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    .line 332
    .local v12, "dig":I
    if-gez v12, :cond_1

    .line 333
    goto :goto_2

    .line 334
    :cond_1
    if-ge v10, v11, :cond_2

    .line 335
    mul-int/lit8 v11, v4, 0xa

    add-int/2addr v11, v12

    move v4, v11

    .end local v4    # "nanos":I
    .local v11, "nanos":I
    goto :goto_1

    .line 336
    .end local v11    # "nanos":I
    .restart local v4    # "nanos":I
    :cond_2
    if-ne v10, v11, :cond_3

    const/4 v11, 0x5

    if-lt v12, v11, :cond_3

    .line 337
    add-int/lit8 v4, v4, 0x1

    .line 329
    .end local v12    # "dig":I
    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_4
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "nfrac":I
    .local v9, "nfrac":I
    if-ge v10, v11, :cond_5

    .line 340
    mul-int/lit8 v4, v4, 0xa

    move v10, v9

    goto :goto_2

    .line 341
    :cond_5
    iput v4, p0, Lgnu/math/DateTime;->nanoSeconds:I

    .line 343
    .end local v4    # "nanos":I
    .end local v9    # "nfrac":I
    :cond_6
    if-ne v3, v6, :cond_8

    if-nez v7, :cond_7

    if-nez v8, :cond_7

    iget v4, p0, Lgnu/math/DateTime;->nanoSeconds:I

    if-eqz v4, :cond_8

    .line 345
    :cond_7
    return v5

    .line 346
    :cond_8
    iget-object v4, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 347
    iget-object v4, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 348
    iget-object v4, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 349
    return v1

    .line 353
    .end local v7    # "minute":I
    .end local v8    # "second":I
    :cond_9
    return v5
.end method

.method parseZone(Ljava/lang/String;I)I
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 233
    if-gez p2, :cond_0

    .line 234
    return p2

    .line 235
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/math/DateTime;->parseZoneMinutes(Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "part":I
    if-nez v0, :cond_1

    .line 237
    const/4 v1, -0x1

    return v1

    .line 238
    :cond_1
    if-ne v0, p2, :cond_2

    .line 239
    return p2

    .line 240
    :cond_2
    shr-int/lit8 v1, v0, 0x10

    .line 242
    .local v1, "minutes":I
    const v2, 0xffff

    and-int/2addr v2, v0

    .line 243
    .local v2, "pos":I
    if-nez v1, :cond_3

    .line 244
    sget-object v3, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    .local v3, "zone":Ljava/util/TimeZone;
    goto :goto_0

    .line 246
    .end local v3    # "zone":Ljava/util/TimeZone;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 247
    .restart local v3    # "zone":Ljava/util/TimeZone;
    :goto_0
    iget-object v4, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    iget v4, p0, Lgnu/math/DateTime;->mask:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lgnu/math/DateTime;->mask:I

    .line 249
    return v2
.end method

.method parseZoneMinutes(Ljava/lang/String;I)I
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 257
    .local v0, "len":I
    if-eq p2, v0, :cond_b

    if-gez p2, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 260
    .local v1, "ch":C
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    .line 261
    add-int/lit8 v2, p2, 0x1

    return v2

    .line 262
    :cond_1
    const/16 v2, 0x2b

    const/16 v3, 0x2d

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_2

    .line 263
    return p2

    .line 264
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 265
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    .line 266
    .local v2, "part":I
    shr-int/lit8 v4, v2, 0x10

    .line 267
    .local v4, "hour":I
    const/16 v5, 0xe

    const/4 v6, 0x0

    if-le v4, v5, :cond_3

    .line 268
    return v6

    .line 269
    :cond_3
    mul-int/lit8 v7, v4, 0x3c

    .line 270
    .local v7, "minute":I
    const v8, 0xffff

    and-int v9, v2, v8

    .line 271
    .local v9, "pos":I
    add-int/lit8 v10, p2, 0x2

    if-eq v9, v10, :cond_4

    .line 272
    return v6

    .line 273
    :cond_4
    if-ge v9, v0, :cond_a

    .line 275
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3a

    if-ne v10, v11, :cond_7

    .line 277
    add-int/lit8 p2, v9, 0x1

    .line 278
    invoke-static {p1, p2}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v2

    .line 279
    and-int v9, v2, v8

    .line 280
    shr-int/lit8 v2, v2, 0x10

    .line 281
    if-lez v2, :cond_6

    const/16 v8, 0x3c

    if-ge v2, v8, :cond_5

    if-ne v4, v5, :cond_6

    .line 282
    :cond_5
    return v6

    .line 283
    :cond_6
    add-int/2addr v7, v2

    .line 284
    add-int/lit8 v5, p2, 0x2

    if-eq v9, v5, :cond_7

    .line 285
    return v6

    .line 290
    :cond_7
    const/16 v5, 0x348

    if-le v7, v5, :cond_8

    .line 291
    return v6

    .line 292
    :cond_8
    if-ne v1, v3, :cond_9

    .line 293
    neg-int v7, v7

    .line 294
    :cond_9
    shl-int/lit8 v3, v7, 0x10

    or-int/2addr v3, v9

    return v3

    .line 289
    :cond_a
    return v6

    .line 258
    .end local v1    # "ch":C
    .end local v2    # "part":I
    .end local v4    # "hour":I
    .end local v7    # "minute":I
    .end local v9    # "pos":I
    :cond_b
    :goto_0
    return p2
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 672
    iget-object v0, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 673
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 719
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/math/DateTime;->toString(Ljava/lang/StringBuffer;)V

    .line 720
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 702
    invoke-virtual {p0}, Lgnu/math/DateTime;->components()I

    move-result v0

    .line 703
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 704
    .local v1, "hasDate":Z
    :goto_0
    and-int/lit8 v4, v0, 0x70

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 705
    .local v2, "hasTime":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 707
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    .line 708
    if-eqz v2, :cond_2

    .line 709
    const/16 v3, 0x54

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 711
    :cond_2
    if-eqz v2, :cond_3

    .line 712
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 713
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/math/DateTime;->toStringZone(Ljava/lang/StringBuffer;)V

    .line 714
    return-void
.end method

.method public toStringDate(Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 609
    invoke-virtual {p0}, Lgnu/math/DateTime;->components()I

    move-result v0

    .line 610
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x2

    const/16 v2, 0x2d

    if-eqz v1, :cond_1

    .line 612
    iget-object v1, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 613
    .local v1, "year":I
    iget-object v3, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 615
    add-int/lit8 v1, v1, -0x1

    .line 616
    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 619
    :cond_0
    const/4 v3, 0x4

    invoke-static {v1, p1, v3}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 620
    .end local v1    # "year":I
    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 623
    :goto_0
    and-int/lit8 v1, v0, 0xc

    if-eqz v1, :cond_3

    .line 625
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 626
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    .line 627
    invoke-virtual {p0}, Lgnu/math/DateTime;->getMonth()I

    move-result v1

    invoke-static {v1, p1, v3}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 628
    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 630
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 631
    invoke-virtual {p0}, Lgnu/math/DateTime;->getDay()I

    move-result v1

    invoke-static {v1, p1, v3}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 634
    :cond_3
    return-void
.end method

.method public toStringTime(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 638
    invoke-virtual {p0}, Lgnu/math/DateTime;->getHours()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 639
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 640
    invoke-virtual {p0}, Lgnu/math/DateTime;->getMinutes()I

    move-result v2

    invoke-static {v2, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    invoke-virtual {p0}, Lgnu/math/DateTime;->getWholeSeconds()I

    move-result v0

    invoke-static {v0, p1, v1}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 643
    iget v0, p0, Lgnu/math/DateTime;->nanoSeconds:I

    invoke-static {v0, p1}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 644
    return-void
.end method

.method public toStringZone(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 677
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    return-void

    .line 679
    :cond_0
    invoke-virtual {p0}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v0

    invoke-static {v0, p1}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 680
    return-void
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .line 733
    iget-object v0, p0, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public withZoneUnspecified()Lgnu/math/DateTime;
    .locals 3

    .line 473
    invoke-virtual {p0}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    return-object p0

    .line 475
    :cond_0
    new-instance v0, Lgnu/math/DateTime;

    iget v1, p0, Lgnu/math/DateTime;->mask:I

    iget-object v2, p0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1, v2}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    .line 476
    .local v0, "r":Lgnu/math/DateTime;
    iget-object v1, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 477
    iget v1, v0, Lgnu/math/DateTime;->mask:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Lgnu/math/DateTime;->mask:I

    .line 478
    return-object v0
.end method
